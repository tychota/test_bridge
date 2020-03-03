/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React from 'react';
import {
  SafeAreaView,
  StyleSheet,
  ScrollView,
  View,
  Text,
  StatusBar,
  Button,
  NativeModules,
  NativeEventEmitter,
} from 'react-native';

import {Header, Colors} from 'react-native/Libraries/NewAppScreen';

let bridge = NativeModules.TestBridge;

let eventBridge = NativeModules.TestEventBridge;
// console.log(eventBridge.events.hello);

let emitter = new NativeEventEmitter(eventBridge);
emitter.addListener(eventBridge.events.hello, console.log);

const App = () => {
  return (
    <>
      <StatusBar barStyle="dark-content" />
      <SafeAreaView>
        <ScrollView
          contentInsetAdjustmentBehavior="automatic"
          style={styles.scrollView}>
          <Header />
          {global.HermesInternal == null ? null : (
            <View style={styles.engine}>
              <Text style={styles.footer}>Engine: Hermes</Text>
            </View>
          )}
          <View style={styles.body}>
            <Button
              title="Test bridge"
              onPress={() => bridge.addEvent('hello', 'world')}
            />

            <Button
              title="Test promise bridge"
              onPress={() =>
                bridge
                  .getSalutations('hello')
                  .then(data => alert(JSON.stringify(data)))
                  .catch(console.log)
              }
            />

            <Button
              title="Test event bridge"
              onPress={() => bridge.startSendingGreetings()}
            />
          </View>
        </ScrollView>
      </SafeAreaView>
    </>
  );
};

const styles = StyleSheet.create({
  scrollView: {
    backgroundColor: Colors.lighter,
  },
  engine: {
    position: 'absolute',
    right: 0,
  },
  body: {
    backgroundColor: Colors.white,
  },
  sectionContainer: {
    marginTop: 32,
    paddingHorizontal: 24,
  },
  sectionTitle: {
    fontSize: 24,
    fontWeight: '600',
    color: Colors.black,
  },
  sectionDescription: {
    marginTop: 8,
    fontSize: 18,
    fontWeight: '400',
    color: Colors.dark,
  },
  highlight: {
    fontWeight: '700',
  },
  footer: {
    color: Colors.dark,
    fontSize: 12,
    fontWeight: '600',
    padding: 4,
    paddingRight: 12,
    textAlign: 'right',
  },
});

export default App;
