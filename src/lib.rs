#[macro_use]
extern crate rutie;

mod adder;
mod result;

#[allow(non_snake_case)]
#[no_mangle]
pub extern "C" fn Init_rutie_and_dry_monads() {
    adder::init();
}
