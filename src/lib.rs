#[macro_use]
extern crate rutie;

use rutie::{Class, Object, RString, VM};

class!(RutieExample);

methods!(
    RutieExample,
    _rtself,
    fn pub_foo(input: RString) -> RString {
        let ruby_string = input.map_err(|e| VM::raise_ex(e)).unwrap();

        if ruby_string.to_string().len() == 1 {
            return RString::new_utf8("foo!");
        } else {
            return RString::new_utf8("bar!");
        }
    }
);

#[allow(non_snake_case)]
#[no_mangle]
pub extern "C" fn Init_rutie_and_dry_monads() {
    Class::new("RutieExample", None).define(|klass| {
        klass.def_self("foo", pub_foo);
    });
}
