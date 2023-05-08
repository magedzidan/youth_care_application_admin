// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors, empty_catches

part of create_event.dart;

class SubmitButton extends StatelessWidget {
  final formKey;
  final TextEditingController categoryController;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final File? image;
  const SubmitButton({
    required this.formKey,
    required this.categoryController,
    required this.titleController,
    required this.descriptionController,
    this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        width: double.infinity,
        height:MediaQuery.of(context).size.height / 15,
        child: ElevatedButton(
            onPressed: () => _trySubmit(
                context,
                formKey,
                categoryController.text,
                titleController.text,
                descriptionController.text,
                image),
            style: ElevatedButton.styleFrom(
              primary: gradientColorA,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: const Text("Submit")));
  }

  void _trySubmit(
    context,
    var formKey,
    String category,
    String title,
    String description,
    File? image,
  ) async {
    final _isValid = formKey.currentState!.validate();
    FocusScope.of(context).unfocus();

    if (_isValid) {
      formKey.currentState!.save();
      try {
       /* await FirestoreMethods().uploadEvent(
          category: category,
          title: title,
          description: description,
        );*/
      } catch (e) {}
    }
  }
}
