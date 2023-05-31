class OnboardContent {
  String imagen;
  String titulo;
  String descripcion;

  OnboardContent({required this.imagen,required this.titulo,required this.descripcion});
}
List<OnboardContent> listOnboardContent = [
  OnboardContent(
    imagen: 'asset/images/7.png',
    titulo: 'Pantalla1',
    descripcion: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eget velit nec dolor pharetra gravid',
  ),
    OnboardContent(
    imagen: 'asset/images/18.png',
    titulo: 'Pantalla2',
    descripcion: 'Deserunt nulla ut aute occaecat dolor laborum.',
  ),
    OnboardContent(
    imagen: 'asset/images/21.png',
    titulo: 'Pantalla3',
    descripcion: 'cing elit. Nulla eget velit nec dolor pharetra gravid',
  ),
    OnboardContent(
    imagen: 'asset/images/25.png',
    titulo: 'Pantalla4',
    descripcion: 'Non dolor reprehenderit labore laborum officia ea quis velit eu consequat velit.',
  ),
  ];
  