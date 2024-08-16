import Foundation

// double better for maths
var likeCount : Double = 5
var commentCount : Double = 1
var viewCount : Double = 100

//likeCount = 5 + 1
//likeCount = likeCount + 1
likeCount += 1
likeCount -= 1

likeCount *= 1.5

likeCount /= 1.5

// Swift uses BIDMAS

if likeCount == 5 {
    print("Post has 5 likes")
} else {
    print("Post does not have 5 likes")
}


if likeCount > 3 && commentCount > 0 {
    print("Post has more than 3 likes and comments")
}

if likeCount > 3 || commentCount > 0 {
    print("Post has more than 3 likes or comments")
}
