extension Array {
    func accumulate<T>(_ fun: (Element) -> T) -> [T] {
        guard let head = self.first else { return [] }
        return [fun(head)] + Array(self.dropFirst(1)).accumulate(fun)
    }
}
