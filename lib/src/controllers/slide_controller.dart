import 'package:get/get.dart';
import 'package:projectapii/src/models/slide.dart';
import '../repository/slide_repository.dart' as slideRepo;

class SlideController extends GetxController{

  var listSlider = RxList<Slide>([]);
  var slider = Slide();
  RxBool isLoading = false.obs;
  
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAllSlider();
  }

  void getAllSlider()async{
    isLoading = true.obs;

    slideRepo.getAllSlidesRepository().then((res){

      listSlider.value=res;
      isLoading = false.obs;

    });
  }
}