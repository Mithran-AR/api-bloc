import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:myapibloc/model/Products.dart';
import 'package:myapibloc/model/apiservice.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductsInitial(plist: [])) {
    on<ProductsEvent>((event, emit) async {
      Apiservice apiservice=Apiservice();
      var list=await apiservice.fetchdata();
      emit(ProductsState(plist: list));
    });
  }
}
