void main() {
  // 1. Lista de capacidades deseadas por el desarrollador
  List<String> capacidadesRequeridas = [
    'Traducción en vivo',
    'Generación de contenido',
    'Resumen de web'
  ];

  // 2. Mapa que asocia a los asistentes con sus capacidades actuales (2026)
  Map<String, List<String>> asistentesIA = {
    'Gemini (Nano 2)': [
      'Traducción en vivo', 
      'Generación de contenido', 
      'Resumen de web', 
      'Multimodalidad'
    ],
    'Siri (Apple Intelligence)': [
      'Resumen de web', 
      'Acción entre apps', 
      'Privacidad local'
    ]
  };

  print('--- COMPARATIVA DE ASISTENTES IA 2026 ---');
  
  // 4. Llamada a la función para generar el reporte
  generarReporteIA(asistentesIA, capacidadesRequeridas);
}

void generarReporteIA(Map<String, List<String>> datos, List<String> requeridas) {
  
  datos.forEach((nombre, capacidades) {
    int matches = 0;
    print('\nEvaluando $nombre:');
    
    // 3. Ciclo para verificar si la plataforma contiene (contains) las capacidades
    for (String requerida in requeridas) {
      if (capacidades.contains(requerida)) {
        print('=) Posee: $requerida');
        matches++;
      } else {
        print('X Falta: $requerida');
      }
    }
    
    // Conclusión por plataforma
    double porcentaje = (matches / requeridas.length) * 100;
    print('Puntaje de Versatilidad: ${porcentaje.toStringAsFixed(0)}%');
  });
}