class Point(xc: Int, yc: Int) {
    var x: Int = xc
    var y: Int = yc

    def move(dx: Int, dy: Int) {
        x += dx
        y += dy
        println("Location (" + x + ", " + y + ")" )
    }
}


object PointDemo {
    def main(args: Array[String]) {
        var pt = new Point(0, 0)
        pt.move(1, 1)
        pt.move(2, -1)

    }
}