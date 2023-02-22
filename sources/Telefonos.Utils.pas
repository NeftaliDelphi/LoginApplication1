unit Telefonos.Utils;

interface

type
  TTelefonoUtils = class
  public
    /// <summary> "Limpia" el tel�fono de caracteres no v�lidos </summary>
    ///     Debe eliminar Espacios, Guines y puntos y +
    ///  (+34)931234567  (34)931234567  (34)93.123.45.67   93-123-45-67 ....
    class function Limpiar(const ATelefono:string):string;
  end;

implementation


uses
  System.SysUtils,
  System.StrUtils;


class function TTelefonoUtils.Limpiar(const ATelefono:string):string;
begin
  //...
end;

end.
