import Vapor
import Fluent

struct BlogCategoryAdminController: AdminViewController {

    typealias EditForm = BlogCategoryEditForm
    typealias Model = BlogCategoryModel
    
    var listView: String = "Blog/Admin/Categories/List"
    var editView: String = "Blog/Admin/Categories/Edit"
}
