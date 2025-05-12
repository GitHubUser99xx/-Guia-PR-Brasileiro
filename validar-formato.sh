#!/bin/bash
# Verifica termos não portugueses
grep -rnw 'documentos/' -e 'TODO\|FIXME' && \
  echo "ERRO: Use 'AJUSTAR' ou 'MELHORIA' em vez de termos em inglês" && exit 1

# Verifica mensagens de commit
git log -1 --pretty=%B | grep -q 'docs:\|fix:\|feat:' || \
  (echo "ERRO: Formato de commit inválido. Use prefixos em PT: 'docs:', 'correcao:'"; exit 1)
