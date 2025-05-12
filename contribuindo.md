 Padrões de Código
# Exemplo de função válida (codigo-fonte/exemplo.py)
def verificar_idioma(texto: str) -> bool:
    """Verifica se o texto está em português"""
    termos_proibidos = ['bug', 'feature', 'hotfix']
    return not any(termo in texto.lower() for termo in termos_proibidos)
✅ Testes Obrigatórios
# Executar verificação de formato
./scripts/validar-formato.sh

# Rodar testes unitários
pytest codigo-fonte/testes/
