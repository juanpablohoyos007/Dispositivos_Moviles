void main() {
  // 1. Datos del análisis (Basado en proyecciones 2025)
  // Nota: Históricamente iOS mantiene un gasto mayor por usuario
  List<Map<String, dynamic>> datosPlataformas = [
    {'nombre': 'Android', 'gastoPromedio': 8.50, 'recaudacion2025': 45000},
    {'nombre': 'iOS', 'gastoPromedio': 12.75, 'recaudacion2025': 89000},
  ];

  print('--- Análisis de Monetización de Startup ---');
  
  // Llamada a la función
  Map<String, String> recomendacion = analizarRentabilidad(datosPlataformas);

  // 3. Mostrar recomendación final
  print('\nRecomendación Final: $recomendacion');
}

// 1. Función que recibe lista de mapas
Map<String, String> analizarRentabilidad(List<Map<String, dynamic>> plataformas) {
  Map<String, String> resultados = {};

  // 2. Ciclo para recorrer y condicional
  for (var plataforma in plataformas) {
    String nombre = plataforma['nombre'];
    double gasto = plataforma['gastoPromedio'];

    if (gasto > 10) {
      resultados[nombre] = 'Alta Rentabilidad';
    } else {
      resultados[nombre] = 'Rentabilidad Estándar';
    }
    
    print('Plataforma: $nombre | Gasto Promedio: \$$gasto | Estatus: ${resultados[nombre]}');
  }

  return resultados;
}