# AWS-deployed stock predictior
This is a 4thBrain ML Engineer course week 12 & 13 assignments repo.
- Week 13 solution is in branch `main`
- Week 12 solution is in branch `week12`

## Running
Buiding an image:

docker build -t stock-prophet:1.0 .

Running the image:

docker run -d --name sp -p 8000:80 stock-prophet:1.0


## Additional questions (Week 13)

### What does it mean to create a Docker image and why do we use Docker images?
To create a Docker image is to create a read-only template containing instructions for creating a container. The main function of an image is to provide a convenient way to package up applications and preconfigured server environments. Personally, I am using docker images for the three main purposes:
- to create a package with a small app that can be easily deployed/incorporated in a larger solution
- to create an environment for data science purposes (if there are more people involved in a project, it saves time)
- to create and environment for teaching purposes.

### Please explain what is the difference from a Container vs a Virtual Machine?
Technically speaking VMs virtualize the entire machine whereas containers virtualize only the layers above the operating system (bins, libs, apps). Practically, containers are lighter, thus more suitable for building smaller solutions (like microservices). Additionally, working with containers is usually faster. Virtual machines on the other hand are more isolated, they can be treated as a physical machines. It provides more flexibility.

### What are 5 examples of container orchestration tools (please list tools)?
1. Kubertentes
2. Docker Swarm
3. Openshift
4. Rancher
5. Mesos

### How does a Docker image differ from a Docker container?
An image is a template for a container. Personally I think about an image as a class, and about a container as an instance of this class.



## Additional questions (Week 12)

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
