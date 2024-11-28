
class Calificaciones { // Clase para gestionar las calificaciones

  final Map<String, double> calificaciones =
      {}; // Mapa para almacenar estudiante-calificación

  // Metodo para agregar o actualizar una calificación

  void agregarCalificacion(String estudiante, double calificacion) {
    calificaciones[estudiante] =
        calificacion; // Añade o actualiza la calificación
    print("Calificación de $estudiante añadida/actualizada.");
  }

  // Metodo para eliminar una calificación por el nombre del estudiante

  void eliminarCalificacion(String estudiante) {
    if (calificaciones.remove(estudiante) != null) {
      print("Calificación de $estudiante eliminada."); // Elimina si existe
    } else {
      print(
          "Error: El estudiante '$estudiante' no tiene calificación registrada.");
    }
  }

  // Metodo para mostrar todas las calificaciones

  void mostrarCalificaciones() {
    if (calificaciones.isEmpty) {
      print("No hay calificaciones registradas."); // Mensaje si no hay datos
    } else {
      print("Calificaciones de los estudiantes:");
      calificaciones.forEach((nombre, nota) {
        print("$nombre: $nota"); // Muestra cada estudiante y su calificación
      });
    }
  }
}
