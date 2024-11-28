
class GenerosMusicales {
  //Clase para gestionar los géneros musicales

  final Set<String> generosFavoritos =
      {}; // Conjunto para evitar duplicados automáticamente

// Metodo para agregar un género favorito

  void agregarGenero(String genero) {
    if (generosFavoritos.length >= 5) {
      print(
          "Solo puedes tener un máximo de 5 géneros favoritos."); // Verifica el límite de géneros
    } else if (generosFavoritos.contains(genero)) {
      print(
          "Error: El género '$genero' ya está en tu lista."); // Evita agregar duplicados
    } else {
      generosFavoritos.add(genero); // Añade el género al conjunto
      print("Género '$genero' añadido exitosamente.");
    }
  }

// Metodo para eliminar un género favorito

  void eliminarGenero(String genero) {
    if (generosFavoritos.remove(genero)) {
      print("Género '$genero' eliminado de la lista."); // Elimina si existe
    } else {
      print(
          "Error: El género '$genero' no está en la lista."); // Mensaje si no existe
    }
  }

// Metodo para mostrar los géneros favoritos

  void mostrarGeneros() {
    if (generosFavoritos.isEmpty) {
      print("No tienes géneros favoritos."); // Mensaje si la lista está vacía
    } else {
      print(
          "Tus géneros favoritos son: ${generosFavoritos.join(', ')}"); // Muestra la lista de géneros
    }
  }
}
