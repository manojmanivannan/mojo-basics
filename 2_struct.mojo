struct MyPair:
    var first: Int
    var second: Int

    fn __init__(inout self, first: Int, second: Int):
        self.first = first
        self.second = second

    fn __lt__(self, rhs: MyPair) -> Bool:
        if self.first < rhs.first:
            print(self.first, "<", rhs.first)
            return self.first < rhs.first

        if self.first == rhs.first:
            print(self.first, "==", rhs.first)
            return self.first == rhs.first

        if self.second < rhs.second:
            print(self.second, "<", rhs.second)
            return self.second < rhs.second

        return False


fn main():
    let a = MyPair(4, 2)
    let b = MyPair(3, 4)
    print(a.__lt__(b))
