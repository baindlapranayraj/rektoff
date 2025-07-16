fn main() {
    let m_one = 100;
    let m_two = 10;
    let m_three = 11;

    // println!("======== Printing the Main Stack pointer value ========");
    //
    // println!("The Pointer value of m_one is {:p}", &m_one);
    // println!("The Pointer value of m_two is {:p}", &m_two);
    // println!("The Pointer value of m_three is {:p}", &m_three);

    c();
}

fn a() {
    println!("======== Printing the a Stack frame pointer value ========");
    let a_one = 100;
    let a_two = 10;
    let a_three = 11;

    println!("The Pointer value of a_one is {:p}", &a_one);
    println!("The Pointer value of a_two is {:p}", &a_two);
    println!("The Pointer value of a_three is {:p}", &a_three);

    b();
}

fn c() {
    // main{}
    let mut x = vec![1, 2];
    // main{mut x}
    let r = &mut x; // x is still owned, but active mutable borrow makes it frozen
                    // main{frz x, r(&mut x)}
    *r = vec![3, 4]; // ✅ main{frz x, r(&mut x)}
                     // main{frz x, r(&mut x)}
    r.push(10);

    let a = r.as_ptr();
    unsafe {
        for i in 0..105 {
            let data = a.add(i);

            println!("The value: {:?} and the data {:?}", data, *data);
        }
    }

    println!("The vec of x is  and r is {:?}", r);
}

fn b() {
    println!("======== Printing the b Stack frame pointer value ========");
    let b_one = 10;
    let b_two = 11;
    let b_three = 20;

    println!("The Pointer value of b_one is {:p}", &b_one);
    println!("The Pointer value of b_two is {:p}", &b_two);
    println!("The Pointer value of b_three is {:p}", &b_three);
}
