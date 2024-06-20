CREATE PROCEDURE deletarlei
  @lei_id int
AS
BEGIN
  IF EXISTS (SELECT 1 FROM lei WHERE id = @lei_id)
  BEGIN
    BEGIN TRY
 
      DELETE FROM lei WHERE id = @lei_id;

      PRINT 'Lei Deletada com Sucesso';
    END TRY
    BEGIN CATCH
 
      PRINT 'Erro ao deletar a Lei. Consulte os logs para obter mais informa��es.';
    END CATCH
  END
  ELSE
  BEGIN
    PRINT 'A Lei com o ID especificado n�o foi encontrada. Nenhuma exclus�o realizada.';
  END
END