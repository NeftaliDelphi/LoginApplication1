unit UTelefono.Utils.tests;

interface

uses
  Telefonos.Utils,
  DUnitX.TestFramework;

type
  [TestFixture]
  TTelefonoUtilsTests = class
  public
    [Test]
    procedure EliminarParentesis;
    [Test]
    procedure ComprobarVacio;

    // comprobar limpiar (parametrizado)
    [Test]
    [TestCase('comprobar la eliminacion de parentesis','(34)931234567,34931234567')]
    [TestCase('comprobar la eliminacion de guiones','93-123-45-67,931234567')]
    [TestCase('comprobar la eliminacion de puntos','93.123.45.67,931234567')]
    [TestCase('comprobar la eliminacion caracteres extraños','(+34)93.123.45.67 ,34931234567')]
    [TestCase('comprobar la eliminacion de espacios','93 123 45 67,931234567')]
    [TestCase('comprobar la eliminacion de espacios','    ,')]
    [TestCase('comprobar tel. vacio',',')]
    [TestCase('comprobar tel. correcto','34931234567,34931234567')]
    procedure ProcedimientoLimpiar(const AValue1, AValue2: string);
  end;

implementation

procedure TTelefonoUtilsTests.ComprobarVacio;
begin
  Assert.AreEqual('', TTelefonoUtils.Limpiar(''));
end;

procedure TTelefonoUtilsTests.Eliminarparentesis;
begin
  Assert.AreEqual('34931234567', TTelefonoUtils.Limpiar('(34)931234567'));
end;


procedure TTelefonoUtilsTests.ProcedimientoLimpiar(const AValue1, AValue2: string);
begin
  Assert.AreEqual(AValue2, TTelefonoUtils.Limpiar(AValue1));
end;

initialization
  TDUnitX.RegisterTestFixture(TTelefonoUtilsTests);

end.
