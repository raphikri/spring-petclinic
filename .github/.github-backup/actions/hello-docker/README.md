# Hello Docker Action

Cette action Docker locale reçoit un message en entrée, l'affiche dans les logs d'exécution, puis publie `output-message` pour les étapes suivantes du workflow.

## Inputs

| Nom     | Description                | Requis |
|---------|----------------------------|--------|
| message | Message à afficher dans les logs | Oui    |

## Outputs

| Nom            | Description                |
|----------------|----------------------------|
| output-message | Message passé en entrée     |

## Exemple d'utilisation

```yaml
- name: Hello Docker Action
  uses: ./.github/actions/hello-docker
  with:
    message: 'Bonjour depuis Docker !'
```

## Résultat attendu dans les logs

```
Bonjour depuis Docker !
```