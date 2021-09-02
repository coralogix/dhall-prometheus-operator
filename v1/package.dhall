{ AlertingSpec =
      ./AlertingSpec.dhall sha256:3d6c197049d77ff9f470c751dcb5146c7b254e8a705859bc65f191887f6f5f0f
    ? ./AlertingSpec.dhall
, Alertmanager =
      ./Alertmanager.dhall sha256:213c9fbe5aa78398d659f3f67003de80b6e235f12fe82dc37b10b479d933ba5a
    ? ./Alertmanager.dhall
, AlertmanagerEndpoints =
      ./AlertmanagerEndpoints.dhall sha256:38b45abbb97b3cf168e92c4d16759ddf32b20ba6e938583ef10f5a1eb371dcbc
    ? ./AlertmanagerEndpoints.dhall
, AlertmanagerList =
      ./AlertmanagerList.dhall sha256:692a87ca954b9f1cff626cacf79ac9ad1ecd31a432567aea7ca4d1ae33799298
    ? ./AlertmanagerList.dhall
, AlertmanagerSpec =
      ./AlertmanagerSpec.dhall sha256:2ef42b906634312851188ff4eada9211014764def21cb81dc9444d1d69e5568d
    ? ./AlertmanagerSpec.dhall
, AlertmanagerStatus =
      ./AlertmanagerStatus.dhall sha256:e2d018badce51e5389191631b0168799b07c220ce6a89945ec1c2732d5a5cb2e
    ? ./AlertmanagerStatus.dhall
, APIServerConfig =
      ./APIServerConfig.dhall sha256:26445538bef8b140e36b52b2915466053d7eabdbde9a744a58ec874fef1f1f98
    ? ./APIServerConfig.dhall
, ArbitraryFSAccessThroughSMsConfig =
      ./ArbitraryFSAccessThroughSMsConfig.dhall sha256:5da9e232ecba3823ce2f918148b8ba813e795426f795f227f198aac9225d62d7
    ? ./ArbitraryFSAccessThroughSMsConfig.dhall
, BasicAuth =
      ./BasicAuth.dhall sha256:2ce5199f94352d1293242b1e97ab6bad6c29f34d8df163676c4487e3c5dae3af
    ? ./BasicAuth.dhall
, Endpoint =
      ./Endpoint.dhall sha256:981e7ce85900c0a7be22975f9916a367a427e78cf30139aae983789607d82de0
    ? ./Endpoint.dhall
, NamespaceSelector =
      ./NamespaceSelector.dhall sha256:22a8b9f1fb7f20831916ede9b6426f6dbf7c44a1499ccd54e78e9c9c3638988a
    ? ./NamespaceSelector.dhall
, PodMetricsEndpoint =
      ./PodMetricsEndpoint.dhall sha256:d8221b911adffd0bc9572ed0673f8e327c3c7338f3576637e13f75d3bf92890c
    ? ./PodMetricsEndpoint.dhall
, PodMonitor =
      ./PodMonitor.dhall sha256:831bf5138e7d268b7bc4894846152866019774f6284f8b01201d2d8016e3092c
    ? ./PodMonitor.dhall
, PodMonitorList =
      ./PodMonitorList.dhall sha256:e837ae890b10a3b5ff1f88413aca60196695b65807db57123353fba6f9d21e44
    ? ./PodMonitorList.dhall
, PodMonitorSpec =
      ./PodMonitorSpec.dhall sha256:bf4682014020cd0c7b52ed728c297053402229496c9eb06be9d5a0762acf50e6
    ? ./PodMonitorSpec.dhall
, Probe =
      ./Probe.dhall sha256:8748887c92bdb722d1a1faa0e864e85504f03fd2f9c6f2ab212a2cf2ac1cbcfd
    ? ./Probe.dhall
, ProbeList =
      ./ProbeList.dhall sha256:66ff9d07bb715a2a803954e7368612d0e8fbdd76e809834765398147e00581df
    ? ./ProbeList.dhall
, ProbeSpec =
      ./ProbeSpec.dhall sha256:8acd59f1430e2d0f784d364d7d64bf5646dad139f8cb4bd8c5810b22ee447381
    ? ./ProbeSpec.dhall
, ProbeTargetIngress =
      ./ProbeTargetIngress.dhall sha256:be2190ff7e7497c870bf343a1bd48c32c5d6aa804c8a12338d5900c7e702ac5b
    ? ./ProbeTargetIngress.dhall
, ProbeTargetStaticConfig =
      ./ProbeTargetStaticConfig.dhall sha256:4951044922978b45e6bfa05197dd2a67bb53d015b24e7cf8361490c460288c65
    ? ./ProbeTargetStaticConfig.dhall
, ProbeTargets =
      ./ProbeTargets.dhall sha256:67308c3bc5d8d8f140746e0e9cf49ff9fb341b1100a536a2c54adb02b922b80e
    ? ./ProbeTargets.dhall
, ProberSpec =
      ./ProberSpec.dhall sha256:12aa19e0e0a2a32ed6e8f609df1071e5348d539e9d7374dcde15b35a0f13900b
    ? ./ProberSpec.dhall
, Prometheus =
      ./Prometheus.dhall sha256:9d088d6859519da3fc1d78407e3ace9437e2220b7db6bf62c55907849d9e55cf
    ? ./Prometheus.dhall
, PrometheusList =
      ./PrometheusList.dhall sha256:3fb31f30f3d30784c368f98202a416bdc2f8e480badf444f8840660ba2bf8557
    ? ./PrometheusList.dhall
, PrometheusRule =
      ./PrometheusRule.dhall sha256:b3af808ca012ea4f6b89199393203df3774f6092c8044f881517e8e4cd06c768
    ? ./PrometheusRule.dhall
, PrometheusRuleList =
      ./PrometheusRuleList.dhall sha256:80692912636fa45f31a59bb82956d2f41f0c49053f4382b1a155aba6dbc6e9ff
    ? ./PrometheusRuleList.dhall
, PrometheusRuleSpec =
      ./PrometheusRuleSpec.dhall sha256:4f82c88e597455995d37cae90c96da586abc06219c1c594cab0efd909d34d47c
    ? ./PrometheusRuleSpec.dhall
, PrometheusSpec =
      ./PrometheusSpec.dhall sha256:0577f0bc893bf3f0da2f0a22b7a69515e7dbc70b29b437ce6792688030214233
    ? ./PrometheusSpec.dhall
, PrometheusStatus =
      ./PrometheusStatus.dhall sha256:e2d018badce51e5389191631b0168799b07c220ce6a89945ec1c2732d5a5cb2e
    ? ./PrometheusStatus.dhall
, QuerySpec =
      ./QuerySpec.dhall sha256:39089f4d09e138ff2883540f94e981a1565834c4e4d01cfdcd9c5bbeff8aaa0b
    ? ./QuerySpec.dhall
, QueueConfig =
      ./QueueConfig.dhall sha256:b882b46979605ffd73945d3daba3f4fc507506968a78996d5332fba1f0fa2572
    ? ./QueueConfig.dhall
, RelabelConfig =
      ./RelabelConfig.dhall sha256:55536331ee4787f7a5063964fbfbc3d903903deae1ccf49365211e35764361fb
    ? ./RelabelConfig.dhall
, RemoteReadSpec =
      ./RemoteReadSpec.dhall sha256:35f9b0d4d222bae5cc8f4a9fff22b56e69f29c191a9176242a68b10b3c873b09
    ? ./RemoteReadSpec.dhall
, RemoteWriteSpec =
      ./RemoteWriteSpec.dhall sha256:797023d62e5fa639422d54014397f5062fb2b9e369cf258fe9d891bb946e054f
    ? ./RemoteWriteSpec.dhall
, Rule =
      ./Rule.dhall sha256:8f87ac3fb98ea6430b9ac72f227f06868c5babd9303204a5b60ba931a1a8672d
    ? ./Rule.dhall
, RuleGroup =
      ./RuleGroup.dhall sha256:1963a4728b793cbbdd86f130d4a00bfbd395215be191e86d220b3ab085f15510
    ? ./RuleGroup.dhall
, Rules =
      ./Rules.dhall sha256:52e8a85f28b05b9d6b9c2bf99da75e10ab6199bc09af7c1c1a8c8b3c98edd918
    ? ./Rules.dhall
, RulesAlert =
      ./RulesAlert.dhall sha256:959e713d7b2ac190c99505ef5fd038ae280635b4cfa0b55271328ed67dd3b1b7
    ? ./RulesAlert.dhall
, SecretOrConfigMap =
      ./SecretOrConfigMap.dhall sha256:c9d8cdd7a4b7d926fca0e9b1b89a26cb59a694366d9a9479297929ce180df5f1
    ? ./SecretOrConfigMap.dhall
, ServiceMonitor =
      ./ServiceMonitor.dhall sha256:11641b59a0c4e19d4c8d6b8208ad524e417a317767b1a9e3bd212fa880a52235
    ? ./ServiceMonitor.dhall
, ServiceMonitorList =
      ./ServiceMonitorList.dhall sha256:ebebd307f0428b6ff2f1b7a3c3f9d34340a92138a8f5e9df965d6597462e9b8d
    ? ./ServiceMonitorList.dhall
, ServiceMonitorSpec =
      ./ServiceMonitorSpec.dhall sha256:68a813386fe0e99e8361b1f4cee62957b9f8a6c28dd9bc17717e10a56a399b09
    ? ./ServiceMonitorSpec.dhall
, StorageSpec =
      ./StorageSpec.dhall sha256:9814d8bbc81a48df58462afcdd9d668a8968ccef3e8b329e2a0a3ac26d7b4561
    ? ./StorageSpec.dhall
, ThanosSpec =
      ./ThanosSpec.dhall sha256:c9e26e61bf4bab7ed01c9b2de1a09d2a2323a5dfbc20669f68c1b4271166308c
    ? ./ThanosSpec.dhall
, ThanosRuler =
      ./ThanosRuler.dhall sha256:de8f64895bc90119e1fd46a441377a0a37d09090a712d034b51a9860200d9279
    ? ./ThanosRuler.dhall
, ThanosRulerList =
      ./ThanosRulerList.dhall sha256:1d804c84be953c4d163275b029c4b60657631bbd04d601e476c693f78e43aa40
    ? ./ThanosRulerList.dhall
, ThanosRulerSpec =
      ./ThanosRulerSpec.dhall sha256:4c2e4fdf58993b1c05e0d0157065bd734aae8c19709cefbb92b60aeaea11c0a2
    ? ./ThanosRulerSpec.dhall
, ThanosRulerStatus =
      ./ThanosRulerStatus.dhall sha256:e2d018badce51e5389191631b0168799b07c220ce6a89945ec1c2732d5a5cb2e
    ? ./ThanosRulerStatus.dhall
, TLSConfig =
      ./TLSConfig.dhall sha256:58054c5f17cbc2ae2bde2cf6acfec263045e9b841d8e60d0f5db152dffafa5cf
    ? ./TLSConfig.dhall
, EmbeddedObjectMetadata =
      ./EmbeddedObjectMetadata.dhall sha256:5a9eb9672ed429bd9d7e9aa333c30aef5c8e44ade302895f8af57f286248c8fa
    ? ./EmbeddedObjectMetadata.dhall
, EmbeddedPersistentVolumeClaim =
      ./EmbeddedPersistentVolumeClaim.dhall sha256:1e57907db48afd81de6b1f3589cc5a23c0658930c50a78e9141c4daa1df7e5f6
    ? ./EmbeddedPersistentVolumeClaim.dhall
, PrometheusRuleExcludeConfig =
      ./PrometheusRuleExcludeConfig.dhall sha256:9de82d0ac332d06b3cca9e96dee8208689bd3e0281f5f807361d4a72109fca18
    ? ./PrometheusRuleExcludeConfig.dhall
, AlertmanagerConfig =
      ./AlertmanagerConfig.dhall sha256:d8fe67bd872acc145fb8133ee1a18b10126e5562503e4b6dd2b7d4a3dcb4e57e
    ? ./AlertmanagerConfig.dhall
, AlertmanagerConfigList =
      ./AlertmanagerConfigList.dhall sha256:c2820102eccaafd19050419991d46e46f51f9d1911e38ad6dc118d20f6e21f27
    ? ./AlertmanagerConfigList.dhall
, AlertmanagerConfigSpec =
      ./AlertmanagerConfigSpec.dhall sha256:b9487178302a27b6ff8aa47180cd23c9be20471436fe8981dceb8be28e4d09da
    ? ./AlertmanagerConfigSpec.dhall
, HTTPConfig =
      ./HTTPConfig.dhall sha256:b33237d271ba53c43ad70ee79463355d929ee65040d413c0f15ef3e3071af17f
    ? ./HTTPConfig.dhall
, InhibitRule =
      ./InhibitRule.dhall sha256:a2c058aaf87549e02bf31cdd9cb1d45e386faffc98c53a6fc964a64f894c758c
    ? ./InhibitRule.dhall
, Matcher =
      ./Matcher.dhall sha256:c8519226bf49d086fafacdac890df38fb63e10921984abfd2787e78aa3d90f3c
    ? ./Matcher.dhall
, OpsGenieConfig =
      ./OpsGenieConfig.dhall sha256:84b0d36296b8dadd9eee814be280e7f594fa35679153cedfad52212edd9a64af
    ? ./OpsGenieConfig.dhall
, OpsGenieConfigDetail =
      ./OpsGenieConfigDetail.dhall sha256:9bb842a44771c837f8f1d7a39c837ff7821ff436f4b198bdfcce0a681dc08b2e
    ? ./OpsGenieConfigDetail.dhall
, OpsGenieConfigResponder =
      ./OpsGenieConfigResponder.dhall sha256:49d9e33fa13b200230a0f65b12ff4fcbe5675b4cf5dbaf9b64d9797899300587
    ? ./OpsGenieConfigResponder.dhall
, PagerDutyConfig =
      ./PagerDutyConfig.dhall sha256:3cdffab07520af478c569df8ea1f5ebba3961c9a050f050fb1b981def67a689c
    ? ./PagerDutyConfig.dhall
, PagerDutyConfigDetail =
      ./PagerDutyConfigDetail.dhall sha256:9bb842a44771c837f8f1d7a39c837ff7821ff436f4b198bdfcce0a681dc08b2e
    ? ./PagerDutyConfigDetail.dhall
, Receiver =
      ./Receiver.dhall sha256:10acdd3e184cf84e1fa59db34d56fe926c9d661ac4a1b39adf4eabffcdb90564
    ? ./Receiver.dhall
, Route =
      ./Route.dhall sha256:07329d1a72d3e3a3410cf74e7295b095a20cbf2c21da9a5b60f907300590914d
    ? ./Route.dhall
, SafeTLSConfig =
      ./SafeTLSConfig.dhall sha256:33847e3bc9669b8e4666acb3deed9cd271ef5f45d4bfe1b36f0f416b4442c39d
    ? ./SafeTLSConfig.dhall
, WeChatConfig =
      ./WeChatConfig.dhall sha256:943fb7fe1350e90d8d5af7d34c9177b9a3421ff47b680ea38514b839dca7e3db
    ? ./WeChatConfig.dhall
, WebhookConfig =
      ./WebhookConfig.dhall sha256:6381e39d10d4bfa438ee66d2aa394795713b273593c786e7612f4aa441b038f3
    ? ./WebhookConfig.dhall
}
