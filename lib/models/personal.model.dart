
// To parse this JSON data, do
//
//     final personal = personalFromMap(jsonString);

import 'dart:convert';

Personal personalFromMap(String str) => Personal.fromMap(json.decode(str));

String personalToMap(Personal data) => json.encode(data.toMap());

class Personal {
    Personal({
        required this.idPersonal,
        required this.apellido1,
        required this.apellido2,
        required this.nombre1,
        required this.nombre2,
        required this.nombre3,
        required this.fechaNacimiento,
        required this.legajo,
        required this.cuil,
        required this.nacionalidad,
        required this.grupoSanguineo,
        required this.destino,
        required this.departamento,
        required this.division,
        required this.sector,
        required this.seccionGuardia,
        required this.funcion,
        required this.escalafon,
        required this.escalaJerarquica,
        required this.grado,
        required this.sexo,
    });

    int idPersonal;
    String apellido1;
    String apellido2;
    String nombre1;
    String nombre2;
    String nombre3;
    DateTime fechaNacimiento;
    int legajo;
    String cuil;
    String nacionalidad;
    dynamic grupoSanguineo;
    Destino destino;
    Departamento departamento;
    Division division;
    Sector sector;
    SeccionGuardia seccionGuardia;
    Funcion funcion;
    Escalafon escalafon;
    EscalaJerarquica escalaJerarquica;
    Grado grado;
    Sexo sexo;

    factory Personal.fromMap(Map<String, dynamic> json) => Personal(
        idPersonal: json["id_personal"],
        apellido1: json["apellido_1"],
        apellido2: json["apellido_2"],
        nombre1: json["nombre_1"],
        nombre2: json["nombre_2"],
        nombre3: json["nombre_3"],
        fechaNacimiento: DateTime.parse(json["fecha_nacimiento"]),
        legajo: json["legajo"],
        cuil: json["cuil"],
        nacionalidad: json["nacionalidad"],
        grupoSanguineo: json["grupo_sanguineo"],
        destino: Destino.fromMap(json["destino"]),
        departamento: Departamento.fromMap(json["departamento"]),
        division: Division.fromMap(json["division"]),
        sector: Sector.fromMap(json["sector"]),
        seccionGuardia: SeccionGuardia.fromMap(json["seccion_guardia"]),
        funcion: Funcion.fromMap(json["funcion"]),
        escalafon: Escalafon.fromMap(json["escalafon"]),
        escalaJerarquica: EscalaJerarquica.fromMap(json["escala_jerarquica"]),
        grado: Grado.fromMap(json["grado"]),
        sexo: Sexo.fromMap(json["sexo"]),
    );

    Map<String, dynamic> toMap() => {
        "id_personal": idPersonal,
        "apellido_1": apellido1,
        "apellido_2": apellido2,
        "nombre_1": nombre1,
        "nombre_2": nombre2,
        "nombre_3": nombre3,
        "fecha_nacimiento": "${fechaNacimiento.year.toString().padLeft(4, '0')}-${fechaNacimiento.month.toString().padLeft(2, '0')}-${fechaNacimiento.day.toString().padLeft(2, '0')}",
        "legajo": legajo,
        "cuil": cuil,
        "nacionalidad": nacionalidad,
        "grupo_sanguineo": grupoSanguineo,
        "destino": destino.toMap(),
        "departamento": departamento.toMap(),
        "division": division.toMap(),
        "sector": sector.toMap(),
        "seccion_guardia": seccionGuardia.toMap(),
        "funcion": funcion.toMap(),
        "escalafon": escalafon.toMap(),
        "escala_jerarquica": escalaJerarquica.toMap(),
        "grado": grado.toMap(),
        "sexo": sexo.toMap(),
    };
}

class Departamento {
    Departamento({
        required this.idDepartamento,
        required this.departamento,
        required this.destinoId,
    });

    int idDepartamento;
    String departamento;
    int destinoId;

    factory Departamento.fromMap(Map<String, dynamic> json) => Departamento(
        idDepartamento: json["id_departamento"],
        departamento: json["departamento"],
        destinoId: json["destino_id"],
    );

    Map<String, dynamic> toMap() => {
        "id_departamento": idDepartamento,
        "departamento": departamento,
        "destino_id": destinoId,
    };
}

class Destino {
    Destino({
        required this.idDestino,
        required this.destino,
    });

    int idDestino;
    String destino;

    factory Destino.fromMap(Map<String, dynamic> json) => Destino(
        idDestino: json["id_destino"],
        destino: json["destino"],
    );

    Map<String, dynamic> toMap() => {
        "id_destino": idDestino,
        "destino": destino,
    };
}

class Division {
    Division({
        required this.idDivision,
        required this.division,
        required this.departamentoId,
        required this.destinoId,
    });

    int idDivision;
    String division;
    int departamentoId;
    int destinoId;

    factory Division.fromMap(Map<String, dynamic> json) => Division(
        idDivision: json["id_division"],
        division: json["division"],
        departamentoId: json["departamento_id"],
        destinoId: json["destino_id"],
    );

    Map<String, dynamic> toMap() => {
        "id_division": idDivision,
        "division": division,
        "departamento_id": departamentoId,
        "destino_id": destinoId,
    };
}

class EscalaJerarquica {
    EscalaJerarquica({
        required this.idEscalaJerarquica,
        required this.escalaJerarquica,
    });

    int idEscalaJerarquica;
    String escalaJerarquica;

    factory EscalaJerarquica.fromMap(Map<String, dynamic> json) => EscalaJerarquica(
        idEscalaJerarquica: json["id_escala_jerarquica"],
        escalaJerarquica: json["escala_jerarquica"],
    );

    Map<String, dynamic> toMap() => {
        "id_escala_jerarquica": idEscalaJerarquica,
        "escala_jerarquica": escalaJerarquica,
    };
}

class Escalafon {
    Escalafon({
        required this.idEscalafon,
        required this.escalafon,
    });

    int idEscalafon;
    String escalafon;

    factory Escalafon.fromMap(Map<String, dynamic> json) => Escalafon(
        idEscalafon: json["id_escalafon"],
        escalafon: json["escalafon"],
    );

    Map<String, dynamic> toMap() => {
        "id_escalafon": idEscalafon,
        "escalafon": escalafon,
    };
}

class Funcion {
    Funcion({
        required this.idFuncion,
        required this.funcion,
    });

    int idFuncion;
    String funcion;

    factory Funcion.fromMap(Map<String, dynamic> json) => Funcion(
        idFuncion: json["id_funcion"],
        funcion: json["funcion"],
    );

    Map<String, dynamic> toMap() => {
        "id_funcion": idFuncion,
        "funcion": funcion,
    };
}

class Grado {
    Grado({
        required this.idGrado,
        required this.grado,
        required this.escalaJerarquicaId,
        required this.jerarquiaId,
    });

    int idGrado;
    String grado;
    int escalaJerarquicaId;
    int jerarquiaId;

    factory Grado.fromMap(Map<String, dynamic> json) => Grado(
        idGrado: json["id_grado"],
        grado: json["grado"],
        escalaJerarquicaId: json["escala_jerarquica_id"],
        jerarquiaId: json["jerarquia_id"],
    );

    Map<String, dynamic> toMap() => {
        "id_grado": idGrado,
        "grado": grado,
        "escala_jerarquica_id": escalaJerarquicaId,
        "jerarquia_id": jerarquiaId,
    };
}

class SeccionGuardia {
    SeccionGuardia({
        required this.idSeccion,
        required this.seccion,
        required this.sectorId,
    });

    int idSeccion;
    String seccion;
    int sectorId;

    factory SeccionGuardia.fromMap(Map<String, dynamic> json) => SeccionGuardia(
        idSeccion: json["id_seccion"],
        seccion: json["seccion"],
        sectorId: json["sector_id"],
    );

    Map<String, dynamic> toMap() => {
        "id_seccion": idSeccion,
        "seccion": seccion,
        "sector_id": sectorId,
    };
}

class Sector {
    Sector({
        required this.idSector,
        required this.sector,
        required this.divisionId,
        required this.departamentoId,
        required this.destinoId,
    });

    int idSector;
    String sector;
    int divisionId;
    int departamentoId;
    int destinoId;

    factory Sector.fromMap(Map<String, dynamic> json) => Sector(
        idSector: json["id_sector"],
        sector: json["sector"],
        divisionId: json["division_id"],
        departamentoId: json["departamento_id"],
        destinoId: json["destino_id"],
    );

    Map<String, dynamic> toMap() => {
        "id_sector": idSector,
        "sector": sector,
        "division_id": divisionId,
        "departamento_id": departamentoId,
        "destino_id": destinoId,
    };
}

class Sexo {
    Sexo({
        required this.idSexo,
        required this.sexo,
    });

    int idSexo;
    String sexo;

    factory Sexo.fromMap(Map<String, dynamic> json) => Sexo(
        idSexo: json["id_sexo"],
        sexo: json["sexo"],
    );

    Map<String, dynamic> toMap() => {
        "id_sexo": idSexo,
        "sexo": sexo,
    };
}
