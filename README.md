# AWS-deployed stock predictior
This is a 4thBrain ML Engineer course week 12 assignment repo.

When the machine is on, and everything works, you may run it with (remember to replace IP number):

curl --header "Content-Type: application/json" --request POST --data '{"ticker":"MSFT", "days":7}' http://35.171.3.151:8000/predict


## Additional questions

### How does the Prophet Algorithm differ from an LSTM?
Prophet is an additive regression model with a piecewise linear or logistic growth curve trend. It includes a yearly seasonal component modeled using Fourier series and a weekly seasonal component modeled using dummy variables. 

LSTM (Long short-term memory networks) is a variation of recurrent neural netowrk that is capable of learning long-term dependencies. 

If I have to point out tone - most important difference, it would be the way of searching seasonality. Prophet has build-in seasonalities (annual and weekly), whereas LSTM analyzes the data from scratch

### Why does an LSTM have poor performance against ARIMA and Profit for Time Series?
(I assume there should be `Prophet` not `Profit` in this question).

That's not entirely true. `ARIMA` works best if we have a good understanding of the data, and can leverage this knowledge to fine-tue the model carefully. Aditionally, ARIMA is a relatively simple algorithm. `Prophet` is designed to deal with stock data (or other data with annual and weekly seasonalities). Although it works very well with such a data, it would probably fail completely with data that do not follow callendar-based seasonalities. `LSTM` should be capable of learning any patterns, but it suffers from both the disadvantages of neual networks (data hungry, difficult to explain) and, partly, distadvantages of RNN (vanishing gradient-related problems, difficult to fine-tune). 

### What is exponential smoothing and why is it used in Time Series Forecasting?
Exponential Smoothing is a family of forecasting models. They use weighted averages of past observations to forecast new values. The weights are chosen to give more importance to recent values in the series. In exponential smoothing as observations get older in time, the importance of these values gets exponentially smaller.

### What is stationarity? What is seasonality? Why Is Stationarity Important in Time Series Forecasting?
Stationarity means that the statistical properties of a time series (or rather the process generating it) do not change over time. Stationarity is important because many useful analytical tools and statistical tests and models rely on it.

Seasonality, on the other hand, is a characteristic of a time series in which the data experiences regular and predictable changes that recur every calendar year.

### How is seasonality different from cyclicality? Fill in the blanks:
`Seasonality` is predictable, whereas `ciclicality` is not.

If the fluctuations are not of a fixed frequency then they are cyclic. If the frequency is unchanging and associated with some aspect of the calendar, then the pattern is seasonal.
