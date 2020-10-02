extern {
    fn add_two(x: i32, y: i32) -> i32;
}

fn main(){
    unsafe {
        println!("add_two : {} + {} -> {}", 4, 6, add_two(4, 6));
    }
}
