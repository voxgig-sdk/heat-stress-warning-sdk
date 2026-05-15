
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { HeatStressWarningSDK } from '..'


describe('exists', async () => {

  test('test-mode', async () => {
    const testsdk = await HeatStressWarningSDK.test()
    equal(null !== testsdk, true)
  })

})
