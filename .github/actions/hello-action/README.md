# Hello JS Action

Cette action GitHub locale JavaScript construit une salutation personnalisée à partir des inputs `username` et `greeting`, l'affiche dans les logs, puis la rend disponible via l'output `message` pour les étapes suivantes du workflow.

## Inputs

| Nom      | Description                      | Requis |
|----------|----------------------------------|--------|
| username | Nom de l’utilisateur à saluer    | Oui    |
| greeting | Message de salutation            | Oui    |

## Outputs

| Nom     | Description                      |
|---------|----------------------------------|
| message | Message de salutation généré      |

## Exemple d’utilisation

```yaml
- name: Hello JS Action
  uses: ./.github/actions/hello-js
  with:
    username: 'Octocat'
    greeting: 'Bonjour'
```

## Résultat attendu dans les logs

```
Bonjour, Octocat !
```
