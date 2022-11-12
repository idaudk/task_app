part of dashboard_view;

class _StoriesRow extends GetView<DashboardController> {
  const _StoriesRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: controller.imagesList.length,
          itemBuilder: (BuildContext context, int index) {
            return FadeAnimation(
              child: SlideAnimation(
                begin: Offset(100, 0),
                child: Padding(
                    padding:  EdgeInsets.only(right: 10.w),
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        radius: 44,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(0.3),
                          radius: 40,
                          child: ClipOval(

                            child: Image.network(

                                controller.imagesList[index].downloadUrl!, height: 300, width: 300, fit: BoxFit.cover,

                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null)
                                  return FadeAnimation(child: child);
                                return Center(
                                  child: Shimmer.fromColors(child: CircleAvatar( radius: 40,), baseColor: Colors.white, highlightColor: Colors.white70),
                                );
                              }),
                            //NetworkImage

                          ), //CircleAvatar
                        ), //CircleAvatar
                      ), //CircleAvatar
                    ),
                ),
              ),
            );
          }),
    );



  }
}


// Image.network(controller.imagesList[index].downloadUrl!,
// fit: BoxFit.cover,
// loadingBuilder: (BuildContext context,
//     Widget child,
// ImageChunkEvent? loadingProgress) {
// if (loadingProgress == null)
// return child;
// return Shimmer.fromColors(child: CircleAvatar(radius: 40,), baseColor: Colors.red, highlightColor: Colors.white);
// }
// )

