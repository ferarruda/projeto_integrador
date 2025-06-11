## Banco de Dados

O script `banco_agendamento.sql` define as tabelas de `usuarios` e `agendamentos` do sistema da quadra comunitária.  
Você pode importar esse script em um banco MySQL ou PostgreSQL para testar.

### Estrutura:
- `usuarios`: id, nome, email
- `agendamentos`: id, id_usuario, data, horario_inicio, horario_fim
