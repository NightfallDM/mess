extern "C"{
    fn add_one(x: i32) -> i32;
}

fn main(){
    unsafe {
        println!("add_one : {} -> {}",4 ,add_one(4));
    }
}
