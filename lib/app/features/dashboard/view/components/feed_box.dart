part of dashboard_view;

class _FeedBox extends GetView<DashboardController> {
  const _FeedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideAnimation(
      begin: Offset(0, 200),
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: controller.imagesList.length,
          itemBuilder: (_, index) {
            return FadeAnimation(
              child: InkWell(
                onTap: () {},
                onLongPress: () {},
                child: Container(
                  margin: EdgeInsets.only(bottom: 15.h),
                  width: Get.width,
                  constraints: BoxConstraints(
                    maxHeight: double.infinity,
                  ),
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          children: [
                            FadeAnimation(
                              child: Center(
                                child: CircleAvatar(
                                  backgroundColor: AppBasicTheme().primaryColor,
                                  foregroundColor: Colors.white,
                                  radius: 20,
                                  child: CircleAvatar(
                                    backgroundColor:
                                        Colors.grey.withOpacity(0.3),
                                    radius: 20,
                                    child: ClipOval(
                                      child: Image.network(
                                          controller
                                              .imagesList[index].downloadUrl!,
                                          height: 200.h,
                                          width: 200.w,
                                          fit: BoxFit.cover, loadingBuilder:
                                              (BuildContext context,
                                                  Widget child,
                                                  ImageChunkEvent?
                                                      loadingProgress) {
                                        if (loadingProgress == null)
                                          return FadeAnimation(child: child);
                                        return Center(
                                          child: Shimmer.Shimmer.fromColors(
                                              child: CircleAvatar(
                                                radius: 21,
                                              ),
                                              baseColor: Colors.white,
                                              highlightColor: Colors.white70),
                                        );
                                      }),
                                      //NetworkImage
                                    ), //CircleAvatar
                                  ), //CircleAvatar
                                ), //CircleAvatar
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              controller.imagesList[index].author!,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        width: Get.width,
                        height: Get.height * 0.3,
                        child: Image.network(
                          controller.imagesList[index].downloadUrl!,
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.low,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null)
                              return FadeAnimation(child: child);
                            return SkeletonItem(
                                child: Column(
                              children: [
                                SkeletonAvatar(
                                  style: SkeletonAvatarStyle(
                                    borderRadius: BorderRadius.circular(0),
                                    shape: BoxShape.rectangle,
                                    padding: EdgeInsets.all(0),
                                    height: Get.height * 0.25,
                                    randomHeight: false,
                                    randomWidth: false,
                                    width: Get.width,
                                  ),
                                ),
                              ],
                            ));
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
