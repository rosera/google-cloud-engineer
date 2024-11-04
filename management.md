# Management 

Information relating to IAM from Google Cloud


## API and services

API management for cloud services

Lab Demos

- [ ] Lab One
- [ ] Lab Two 

## Billing 

Set up a project with a budget.

1. Initialise an environment variable with the `billing account`
2. Create a threashold based on `billing amount`
3. Billing value should be based on project currency
4. Set a threashold rule percentage `25%`, `50%` and `75%` 
5. Run the following command:

```bash
 gcloud beta billing budgets create   --display-name="Test Budget gcloud" \
  --billing-account=$BILLING_ACCOUNT \
  --budget-amount=1GBP \
  --threshold-rule=percent=0.25 \
  --threshold-rule=percent=0.50 \
  --threshold-rule=percent=0.75,basis=forecasted-spend
 ```

Lab Demos

- [ ] Lab One
- [ ] Lab Two 

## IAM and admin 

TBC

Lab Demos

- [ ] Lab One
- [ ] Lab Two 

## Google Cloud setup 

TBC

Lab Demos

- [ ] Lab One
- [ ] Lab Two 

## Admin for Gemini 

TBC

Lab Demos

- [ ] Lab One
- [ ] Lab Two 
