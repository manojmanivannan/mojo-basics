from python import Python


fn add(x: Int, y: Int) -> Int:  # by default x is borrowed here in the add fn
    return x + y


fn set_fire(owned text: String) -> String:
    text += "🔥"
    return text

fn create_matrix(rows: Int, cols: Int) raises -> PythonObject:
    let np = Python.import_module("numpy")
    let matrix = np.arange(rows*cols).reshape(rows,cols)
    return matrix

fn main():
    # simple function
    let x = add(1, 2)
    print("x:", x)

    # ownership
    let a: String = "mojo"
    let b = set_fire(a)
    print("a:", a)
    print("b:", b)

    # ownership transfer
    let c = set_fire(a ^)
    # print(a) # << - this line will throw error , since ownership of a was transfer when calling set_fire fn

    # Python integration
    try:
        let ar = create_matrix(3,5)
        print(ar)
    except:
        print('Unable to create matrix')
