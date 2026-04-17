# Hello Composite Action

Cette action composite locale enchaîne plusieurs commandes shell : elle salue l'utilisateur, génère un nombre aléatoire exposé en sortie, puis exécute un script local goodbye.sh.

## Inputs

| Nom            | Description                    | Requis |
|----------------|--------------------------------|--------|
| who-to-greet   | Nom de l'utilisateur à saluer  | Oui    |

## Outputs

| Nom            | Description                    |
|----------------|--------------------------------|
| random-number  | Nombre aléatoire généré (0-99) |

## Exemple d'utilisation

```yaml
- name: Hello Composite Action
  uses: ./.github/actions/hello-composite
  with:
    who-to-greet: 'Octocat'
```

## Résultat attendu dans les logs

```
Bonjour, Octocat !
Nombre aléatoire: 42
Au revoir et bonne journée !
```

L'output `random-number` peut être utilisé dans les étapes suivantes :

```yaml
- name: Utiliser le nombre aléatoire
  run: echo "Le nombre aléatoire est ${{ steps.<step-id>.outputs.random-number }}"
```