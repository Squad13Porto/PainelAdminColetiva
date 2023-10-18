class CourseModel {
  final String sigla;
  final int nivelPrioridade;
  final String nome;
  final String descricao;
  final String urlImage;
  final String segmentacao;
  final String promessa;
  final String beneficios;

  CourseModel({
    required this.sigla,
    required this.nivelPrioridade,
    required this.nome,
    required this.descricao,
    required this.urlImage,
    required this.segmentacao,
    required this.promessa,
    required this.beneficios,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'sigla': sigla});
    result.addAll({'nivelPrioridade': nivelPrioridade});
    result.addAll({'nome': nome});
    result.addAll({'descricao': descricao});
    result.addAll({'urlImage': urlImage});
    result.addAll({'segmentacao': segmentacao});
    result.addAll({'promessa': promessa});
    result.addAll({'beneficios': beneficios});

    return result;
  }

  factory CourseModel.fromMap(Map<String, dynamic> map) {
    return CourseModel(
      sigla: map['sigla'] ?? '',
      nivelPrioridade: map['nivelPrioridade']?.toInt() ?? 0,
      nome: map['nome'] ?? '',
      descricao: map['descricao'] ?? '',
      urlImage: map['urlImage'] ?? '',
      segmentacao: map['segmentacao'] ?? '',
      promessa: map['promessa'] ?? '',
      beneficios: map['beneficios'] ?? '',
    );
  }
}
