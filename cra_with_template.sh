SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
echo $SCRIPTPATH
cd ../ && npx create-react-app $1 --template typescript
cd $1

yarn add @typescript-eslint/eslint-plugin @typescript-eslint/parser eslint eslint-config-airbnb eslint-config-prettier eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-only-warn eslint-plugin-prettier eslint-plugin-react eslint-plugin-react-hooks prettier

cp $SCRIPTPATH/.prettierrc $SCRIPTPATH/../$1/.prettierrc
cp $SCRIPTPATH/.eslintrc.json $SCRIPTPATH/../$1/.eslintrc.json