import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:one_box/core/helper_functions/app_router.dart';
import 'package:one_box/core/utils/app_colors.dart';
import 'package:one_box/core/widgets/sup_category_item.dart';
import 'package:one_box/features/Home/data/models/supcategory_response.dart';
import 'package:one_box/features/Home/presentation/manager/categores_cubit/categories_cubit.dart';

class SupCategoryView extends StatefulWidget {
  const SupCategoryView(
      {super.key, required this.title, required this.image, required this.id});
  final String title;
  final String image;
  final int id;

  @override
  State<SupCategoryView> createState() => _SupCategoryViewState();
}

class _SupCategoryViewState extends State<SupCategoryView> {
  @override
  void initState() {
    CategoriesCubit.get(context).getSupCategories(id: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // log("image ${widget.image}");
    // log("id ${widget.id}" + "title ${widget.title}" + "image ${widget.image}");
    return BlocConsumer<CategoriesCubit, CategoriesState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is GetSupCategoriesDataSuccessState) {
          log("state $state");
          if (state.supCategoriesResponse.data!.isEmpty) {
            return Scaffold(
              backgroundColor: Colors.grey.shade300,
              appBar: AppBar(
                title: Text(widget.title),
                centerTitle: true,
                flexibleSpace: Container(
                    decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentDirectional.centerEnd,
                    end: AlignmentDirectional.centerStart,
                    colors: [
                      AppColors.gradiant1,
                      AppColors.gradiant2,
                      AppColors.gradiant3,
                      AppColors.gradiant4,
                    ],
                  ),
                )),
              ),
              body: const Center(child: Text("لا يوجد بيانات")),
            );
          } else {
            return SupCategoryViewBody(
                supCategoriesResponse: state.supCategoriesResponse,
                title: widget.title,
                image: widget.image);
          }
        } else if (state is GetSupCategoriesDataloadingState) {
          return Scaffold(
              backgroundColor: Colors.grey.shade300,
              body: const Center(child: CircularProgressIndicator()),
              appBar: AppBar(
                title: Text(widget.title),
                centerTitle: true,
                flexibleSpace: Container(
                    decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentDirectional.centerEnd,
                    end: AlignmentDirectional.centerStart,
                    colors: [
                      AppColors.gradiant1,
                      AppColors.gradiant2,
                      AppColors.gradiant3,
                      AppColors.gradiant4,
                    ],
                  ),
                )),
              ));
        } else if (state is GetSupCategoriesDataErrorState) {
          return Scaffold(
              backgroundColor: Colors.grey.shade300,
              body: Center(child: Text(state.errMessage)),
              appBar: AppBar(
                title: Text(widget.title),
                centerTitle: true,
                flexibleSpace: Container(
                    decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentDirectional.centerEnd,
                    end: AlignmentDirectional.centerStart,
                    colors: [
                      AppColors.gradiant1,
                      AppColors.gradiant2,
                      AppColors.gradiant3,
                      AppColors.gradiant4,
                    ],
                  ),
                )),
              ));
        } else {
          return Scaffold(
              backgroundColor: Colors.grey.shade300,
              body: const Center(child: Text("يوجد خطاء")),
              appBar: AppBar(
                title: Text(widget.title),
                centerTitle: true,
                flexibleSpace: Container(
                    decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentDirectional.centerEnd,
                    end: AlignmentDirectional.centerStart,
                    colors: [
                      AppColors.gradiant1,
                      AppColors.gradiant2,
                      AppColors.gradiant3,
                      AppColors.gradiant4,
                    ],
                  ),
                )),
              ));
        }
        // log("state $state");
        // return SupCategoryViewBody(title: widget.title, image: widget.image);
      },
    );
  }
}

class SupCategoryViewBody extends StatelessWidget {
  const SupCategoryViewBody({
    super.key,
    required this.title,
    required this.image,
    required this.supCategoriesResponse,
  });

  final String title;
  final String image;
  final SupCategoriesResponse supCategoriesResponse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        // appBar: ,
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,

          flexibleSpace: Container(
              decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.centerEnd,
              end: AlignmentDirectional.centerStart,
              colors: [
                AppColors.gradiant1,
                AppColors.gradiant2,
                AppColors.gradiant3,
                AppColors.gradiant4,
              ],
            ),
          )),
          // backgroundColor: AppColors.gradiant3,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.only(end: 10.0, top: 20),
          child: Center(
            child: Wrap(
              spacing: 8,
              runSpacing: 10,
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: List.generate(
                supCategoriesResponse.data!.length,
                (index) => GestureDetector(
                  onTap: () {
                    context.push(AppRouter.productsView);
                  },
                  child: SupCategoryItem(
                      image: image,
                      image2: supCategoriesResponse.data![index].imagePath!,
                      title: supCategoriesResponse.data![index].name!),
                ),
              ),
            ),
          ),
        ));
  }
}
