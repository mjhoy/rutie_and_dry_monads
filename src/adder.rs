use crate::result::result_to_dry_result;
use rutie::{AnyObject, Class, Fixnum, Object, VM};

class!(Adder);

methods!(
    Adder,
    _rtself,
    fn pub_add(a: Fixnum, b: Fixnum) -> AnyObject {
        let a = a.map_err(|e| VM::raise_ex(e)).unwrap().to_i64();
        let b = b.map_err(|e| VM::raise_ex(e)).unwrap().to_i64();

        let sum = a + b;

        let res = if sum == 666 {
            Err("You can't add that.")
        } else {
            Ok(Fixnum::new(sum).to_any_object())
        };

        result_to_dry_result(res)
    }
);

pub fn init() {
    Class::new("Adder", None).define(|klass| {
        klass.def_self("add", pub_add);
    });
}
