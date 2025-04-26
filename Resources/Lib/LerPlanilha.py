import openpyxl
import pyperclip
from openpyxl import load_workbook


# metodo de leitura de celula
def ler_dado_celula(aba: str, celula: str):
    planilha = load_workbook('M:/f978268_view/SIACC/04-Testes/Certificacao/Massa/Online/Massa de dados SIACC TA.xlsx')
    sheet_ranges = planilha[aba]
    return sheet_ranges[celula].value

def copiar_texto(texto: str):
    pyperclip.copy(texto)
    
#Metodo com o caminho do PATH direto
#def ler_dado_celula(aba: str, celula: str ):
#    planilha = load_workbook(filename = r"C:\Users\F561953\ambiente\branchs\GECEQ-certificacao-teste\SINAC\TestData\Login.xlsx")
#    sheet_ranges = planilha[aba]
#    return sheet_ranges[celula].value
#=======
    
    
#    planilha = load_workbook(filename = r"C:\Users\F949399\ambientePiloto\GECEQ-certificacao-teste\SINAC\TestData\Login.xlsx")
#    sheet_ranges = planilha[aba]
#    return sheet_ranges[celula].value


#Carregar Planilha e Aba
#planilha = openpyxl.load_workbook("C:\Users\F949399\ambientePiloto\GECEQ-certificacao-teste\SINAC\TestData")#
 
#verifica se existe a ABA(Sheet) da planilha
#aba = planilha=["Alef"]
 
# metodo de leitura de celula posicional
#def readData(sheetName, row_num, column_num):
#   sheet = wbook.get_sheet_by_name(sheetName)
#   return sheet.cell(row=row_num, column=column_num).value
 
# metodo de leitura para ler todos os dados da planilha
#def fetch_number_rows(Sheetname):
    #sheet = wbook(Sheetname)
    #return sheet.max_row
 
#def fetch_cell_data(Sheetname: str, row: int, col: int):
#     sheet = wbook(Sheetname)
#     cell = sheet.cell(row,col)
#     return cell.value