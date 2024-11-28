import 'dart:io'; // Biblioteca para manejar la entrada y salida de datos en la consola
import 'models/generosmusicales.dart';
import 'models/tareas.dart';
import 'models/calificaciones.dart';

// Metodo principal con menú

void main() {
  final generos = GenerosMusicales(); // Instancia para gestionar géneros
  final tareas = Tareas(); // Instancia para gestionar tareas
  final calificaciones =
      Calificaciones(); // Instancia para gestionar calificaciones

  while (true) {
    print("\nMenú principal:");
    print("1. Ejercicio 1: Géneros Musicales");
    print("2. Ejercicio 2: Lista de Tareas");
    print("3. Ejercicio 3: Calificaciones");
    print("4. Salir");
    stdout.write("Elige una opción: ");
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        gestionarGeneros(generos); // Submenú de géneros
        break;
      case '2':
        gestionarTareas(tareas); // Submenú de tareas
        break;
      case '3':
        gestionarCalificaciones(calificaciones); // Submenú de calificaciones
        break;
      case '4':
        print("¡Hasta luego!");
        exit(0);
      default:
        print(
            "Opción no válida. Inténtalo de nuevo."); // Valida opciones incorrectas
    }
  }
}

// Submenú para gestionar géneros

void gestionarGeneros(GenerosMusicales generos) {
  while (true) {
    print("\nGéneros Musicales:");
    print("1. Agregar género");
    print("2. Eliminar género");
    print("3. Mostrar géneros");
    print("4. Volver al menú principal");
    stdout.write("Elige una opción: ");
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        stdout.write("Introduce el género a agregar: ");
        String? genero = stdin.readLineSync();
        if (genero != null) generos.agregarGenero(genero); // Agrega género
        break;
      case '2':
        stdout.write("Introduce el género a eliminar: ");
        String? genero = stdin.readLineSync();
        if (genero != null) generos.eliminarGenero(genero); // Elimina género
        break;
      case '3':
        generos.mostrarGeneros(); // Muestra la lista
        break;
      case '4':
        return; // Regresa al menú principal
      default:
        print("Opción no válida.");
    }
  }
}

// Submenú para gestionar tareas

void gestionarTareas(Tareas tareas) {
  while (true) {
    print("\nLista de Tareas:");
    print("1. Agregar tarea");
    print("2. Eliminar tarea");
    print("3. Mostrar tareas");
    print("4. Volver al menú principal");
    stdout.write("Elige una opción: ");
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        stdout.write("Introduce la tarea a agregar: ");
        String? tarea = stdin.readLineSync();
        if (tarea != null) tareas.agregarTarea(tarea); // Agrega tarea
        break;
      case '2':
        stdout.write("Introduce el índice de la tarea a eliminar: ");
        String? indice = stdin.readLineSync();
        if (indice != null) {
          tareas.eliminarTarea(int.parse(indice) - 1); // Elimina tarea
          break;
        }
      case '3':
        tareas.mostrarTareas(); // Muestra la lista de tareas
        break;
      case '4':
        return; // Regresa al menú principal
      default:
        print("Opción no válida.");
    }
  }
}

// Submenú para gestionar calificaciones

void gestionarCalificaciones(Calificaciones calificaciones) {
  while (true) {
    print("\nCalificaciones:");
    print("1. Agregar calificación");
    print("2. Eliminar calificación");
    print("3. Mostrar calificaciones");
    print("4. Volver al menú principal");
    stdout.write("Elige una opción: ");
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        stdout.write("Introduce el nombre del estudiante: ");
        String? estudiante = stdin.readLineSync();
        stdout.write("Introduce la calificación: ");
        String? nota = stdin.readLineSync();
        if (estudiante != null && nota != null) {
          calificaciones.agregarCalificacion(
              estudiante, double.parse(nota)); // Agrega calificación
        }
        break;
      case '2':
        stdout.write("Introduce el nombre del estudiante a eliminar: ");
        String? estudiante = stdin.readLineSync();
        if (estudiante != null) {
          calificaciones
              .eliminarCalificacion(estudiante); // Elimina calificación
          break;
        }
      case '3':
        calificaciones.mostrarCalificaciones(); // Muestra calificaciones
        break;
      case '4':
        return; // Regresa al menú principal
      default:
        print("Opción no válida.");
    }
  }
}