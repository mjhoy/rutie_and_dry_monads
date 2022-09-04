use rutie::{AnyObject, Module, Object, RString};

pub fn result_to_dry_result(result: Result<AnyObject, &str>) -> AnyObject {
    let failure_klass = Module::from_existing("Dry")
        .get_nested_module("Monads")
        .get_nested_module("Result")
        .get_nested_class("Failure");
    let success_klass = Module::from_existing("Dry")
        .get_nested_module("Monads")
        .get_nested_module("Result")
        .get_nested_class("Success");

    match result {
        Ok(o) => success_klass.new_instance(&[o]),
        Err(str) => failure_klass.new_instance(&[RString::new_utf8(str).to_any_object()]),
    }
}
