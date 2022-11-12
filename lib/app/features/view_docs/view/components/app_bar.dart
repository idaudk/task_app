part of view_docs_view;

class _AppBar extends GetView<ViewDocsController> {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffebf2f8),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(Icons.arrow_back)),
            SizedBox(width: 16.h),
            Text(
              'View File',
              style: TextStyle(fontSize: 16.r, fontWeight: FontWeight.bold),
            ),
            const Spacer(),

          ],
        ),
      ),
    );
  }
}