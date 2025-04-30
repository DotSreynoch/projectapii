import 'package:get/get.dart';
import 'package:projectapii/src/models/categories_model.dart';
import '../repository/categories_repository.dart' as categoryRepo;
class CategoryController extends GetxController{
  var listCategory = RxList<CategoryModel>([]);
  var categories = CategoryModel();
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAllCategories();
  }

  void getAllCategories(){
    isLoading = true.obs;
    categoryRepo.getCategoryAPI().then((res){
      listCategory.value = res;
      isLoading = false.obs;
    });
  }
}