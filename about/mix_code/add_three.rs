#[no_mangle]
pub extern "C" fn add_three(x: i32, y: i32, z: i32) -> i32{
    x + y + z
}
