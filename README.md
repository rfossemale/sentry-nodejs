# sentry-nodejs
Testing Sentry error tracking and performance monitoring

```
- npm install dotenv
- npm install express @babel/core @babel/node @babel/preset-env --save-dev
- npm install nodemon --save-dev
- npm install --save @sentry/node
```

# Add Readable Stack Traces to Errors
```
Depending on how you've set up your Node projectRepresents your service in Sentry and 
allows you to scope events to a distinct application., the stack traces in your Sentry errors 
probably don't look like your actual code.
- npx @sentry/wizard@latest -i sourcemaps

(This setup wizard sends telemetry data and crash reports to Sentry.               │
│  You can turn this off by running the wizard with the '--disable-telemetry' flag.) 
```

```
- npm install --save @sentry/node @sentry/profiling-node
```