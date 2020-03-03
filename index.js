/**
 * @format
 */

import {AppRegistry, NativeModules} from 'react-native';
import App from './App';
import {name as appName} from './app.json';

console.log(NativeModules)

AppRegistry.registerComponent(appName, () => App);
