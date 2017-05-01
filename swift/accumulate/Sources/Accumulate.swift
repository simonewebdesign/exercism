extension Array {
    func accumulate<T>(_ fun: (Element) -> T) -> [T] {
        guard let head = first else { return [] }
        return [fun(head)] + Array(dropFirst(1)).accumulate(fun)
    }
}
