# This file has been generated by dapp2nix 1.1.1, do not edit.

{ solidityPackage, solc, dapp2 }:

let
  inherit (builtins) map listToAttrs attrNames attrValues;
  mapAttrs = if (builtins ? mapAttrs)
    then builtins.mapAttrs
    else f: attrs:
      listToAttrs (map
        (name: { inherit name; value = f name attrs."${name}"; })
        (attrNames attrs));

  defaults = {
    inherit solc;
    test-hevm = dapp2.test-hevm;
    doCheck = true;
  };

  package = spec: let
    spec' = defaults // (removeAttrs spec [ "repo'" "src'" ]);
    deps = map (spec:
      package (spec // { inherit (spec') solc test-hevm doCheck; })
    ) (attrValues spec'.deps);
  in solidityPackage (spec' // { inherit deps; });

  packageSpecs = mapAttrs (_: package);

  specs = rec {
    ds-auth_f783169 = rec {
      name = "ds-auth";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-auth-f783169-source";
        url = "https://github.com/dapphub/ds-auth";
        rev = "f783169408c278f85e26d77ba7b45823ed9503dd";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-chief_ea05ee0 = rec {
      name = "ds-chief";
      deps = {
        ds-roles = ds-roles_0138372;
        ds-test = ds-test_a4e4005;
        ds-thing = ds-thing_5e49fcb;
        ds-token = ds-token_cee36a1;
      };
      repo' = {
        name = "ds-chief-ea05ee0-source";
        url = "https://github.com/dapphub/ds-chief";
        rev = "ea05ee0413a8b3852142664a6c04d6e4923be426";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-exec_c53aab4 = rec {
      name = "ds-exec";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-exec-c53aab4-source";
        url = "https://github.com/dapphub/ds-exec";
        rev = "c53aab4ba91645b30b0644972ef016b5ee606ca8";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-guard_4678e1c = rec {
      name = "ds-guard";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-guard-4678e1c-source";
        url = "https://github.com/dapphub/ds-guard";
        rev = "4678e1c74fce1542f1379f11325d7bfbbb897344";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-math_784079b = rec {
      name = "ds-math";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-math-784079b-source";
        url = "https://github.com/dapphub/ds-math";
        rev = "784079b72c4d782b022b3e893a7c5659aa35971a";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-note_beef816 = rec {
      name = "ds-note";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-note-beef816-source";
        url = "https://github.com/dapphub/ds-note";
        rev = "beef8166f2184a4bac3d02abdb944647fd735060";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-pause_81fd9d4 = rec {
      name = "ds-pause";
      deps = {
        ds-chief = ds-chief_ea05ee0;
        ds-proxy = ds-proxy_379f5e2;
        ds-spell = ds-spell_c908b78;
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
      };
      repo' = {
        name = "ds-pause-81fd9d4-source";
        url = "https://github.com/dapphub/ds-pause";
        rev = "81fd9d43e56615267a10e29710716342bcca0ce3";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-proxy_379f5e2 = rec {
      name = "ds-proxy";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-proxy-379f5e2-source";
        url = "https://github.com/dapphub/ds-proxy";
        rev = "379f5e2fc0a6ed5a7a96d3f211cc5ed8761baf00";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-roles_0138372 = rec {
      name = "ds-roles";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-roles-0138372-source";
        url = "https://github.com/dapphub/ds-roles";
        rev = "01383725a4240000c0e274e55bdcf251570fd486";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-spell_c908b78 = rec {
      name = "ds-spell";
      deps = {
        ds-exec = ds-exec_c53aab4;
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-spell-c908b78-source";
        url = "https://github.com/dapphub/ds-spell";
        rev = "c908b7807f08661b4eca97adff6d9561d0116244";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-stop_6e2bda6 = rec {
      name = "ds-stop";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-stop-6e2bda6-source";
        url = "https://github.com/dapphub/ds-stop";
        rev = "6e2bda69cb3cbf25a475491d9bc22969adb05993";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-test_a4e4005 = rec {
      name = "ds-test";
      deps = {
      };
      repo' = {
        name = "ds-test-a4e4005-source";
        url = "https://github.com/dapphub/ds-test";
        rev = "a4e40050b809705b15867939f5829540c50cb84f";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-thing_5e49fcb = rec {
      name = "ds-thing";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-math = ds-math_784079b;
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-thing-5e49fcb-source";
        url = "https://github.com/dapphub/ds-thing";
        rev = "5e49fcbdf4ef8ccd241423ed114576f51c42f1e0";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-token_cee36a1 = rec {
      name = "ds-token";
      deps = {
        ds-math = ds-math_784079b;
        ds-stop = ds-stop_6e2bda6;
        ds-test = ds-test_a4e4005;
        erc20 = erc20_f322aac;
      };
      repo' = {
        name = "ds-token-cee36a1-source";
        url = "https://github.com/dapphub/ds-token";
        rev = "cee36a14685b3f93ffa0332853d3fcd943fe96a5";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-value_d2107c1 = rec {
      name = "ds-value";
      deps = {
        ds-test = ds-test_a4e4005;
        ds-thing = ds-thing_5e49fcb;
      };
      repo' = {
        name = "ds-value-d2107c1-source";
        url = "https://github.com/dapphub/ds-value";
        rev = "d2107c1751f086aed3c38a2f433d6945444af7d6";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-value_f307171 = rec {
      name = "ds-value";
      deps = {
        ds-test = ds-test_a4e4005;
        ds-thing = ds-thing_5e49fcb;
      };
      repo' = {
        name = "ds-value-f307171-source";
        url = "https://github.com/dapphub/ds-value";
        rev = "f3071713afbd583991637f8cfab5e0d29466dffd";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-weth_dfada5b = rec {
      name = "ds-weth";
      deps = {
        ds-test = ds-test_a4e4005;
        erc20 = erc20_f322aac;
      };
      repo' = {
        name = "ds-weth-dfada5b-source";
        url = "https://github.com/dapphub/ds-weth";
        rev = "dfada5bca7a00046c1ddc37c0c43106a8c0a4e5a";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss-cdp-manager_0707db9 = rec {
      name = "dss-cdp-manager";
      deps = {
        ds-test = ds-test_a4e4005;
        dss-deploy = dss-deploy_29755b9;
      };
      repo' = {
        name = "dss-cdp-manager-0707db9-source";
        url = "https://github.com/makerdao/dss-cdp-manager";
        rev = "0707db99b3076eb52a15897a1ac222ca5df94be3";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss-deploy-pause-proxy-actions_7d25a37 = rec {
      name = "dss-deploy-pause-proxy-actions";
      deps = {
        ds-test = ds-test_a4e4005;
        dss-deploy = dss-deploy_29755b9;
      };
      repo' = {
        name = "dss-deploy-pause-proxy-actions-7d25a37-source";
        url = "https://github.com/makerdao/dss-deploy-pause-proxy-actions";
        rev = "7d25a37ba3a9ca4814b3e85e95cc912c7a098503";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss-deploy_29755b9 = rec {
      name = "dss-deploy";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-guard = ds-guard_4678e1c;
        ds-pause = ds-pause_81fd9d4;
        ds-roles = ds-roles_0138372;
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
        ds-weth = ds-weth_dfada5b;
        dss = dss_407afdc;
        esm = esm_e0a85d6;
      };
      repo' = {
        name = "dss-deploy-29755b9-source";
        url = "https://github.com/makerdao/dss-deploy";
        rev = "29755b9d637384821f7839adda5a0f71269125c9";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss-proxy-actions_341d689 = rec {
      name = "dss-proxy-actions";
      deps = {
        ds-test = ds-test_a4e4005;
        dss-cdp-manager = dss-cdp-manager_0707db9;
        proxy-registry = proxy-registry_59e077f;
      };
      repo' = {
        name = "dss-proxy-actions-341d689-source";
        url = "https://github.com/makerdao/dss-proxy-actions";
        rev = "341d6897114ef9a795d3025b6fd2535eef5098ba";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss_407afdc = rec {
      name = "dss";
      deps = {
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
        ds-value = ds-value_f307171;
      };
      repo' = {
        name = "dss-407afdc-source";
        url = "https://github.com/makerdao/dss";
        rev = "407afdcb034db841b25823a4aa312c005b3edf4d";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    erc20_f322aac = rec {
      name = "erc20";
      deps = {
      };
      repo' = {
        name = "erc20-f322aac-source";
        url = "https://github.com/dapphub/erc20";
        rev = "f322aaca414db343337814097d2af43214bee96c";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    esm_e0a85d6 = rec {
      name = "esm";
      deps = {
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
      };
      repo' = {
        name = "esm-e0a85d6-source";
        url = "https://github.com/makerdao/esm";
        rev = "e0a85d6215cec2a7786c1dcaee188a3ff393710d";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    gov-polling-generator_d08e43e = rec {
      name = "gov-polling-generator";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "gov-polling-generator-d08e43e-source";
        url = "https://github.com/makerdao/gov-polling-generator";
        rev = "d08e43ee1a8d6daac3fc0bc4aee5a0c92f62c2e8";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    line-spell_208d847 = rec {
      name = "line-spell";
      deps = {
        ds-test = ds-test_a4e4005;
        dss-deploy = dss-deploy_29755b9;
      };
      repo' = {
        name = "line-spell-208d847-source";
        url = "https://github.com/makerdao/line-spell";
        rev = "208d847535010fe632c579a038289ccfc2d90d91";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    median_d95bbc1 = rec {
      name = "median";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "median-d95bbc1-source";
        url = "https://github.com/makerdao/median";
        rev = "d95bbc1c3687160354f7156896017366652d6a73";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    mkr-authority_441a77d = rec {
      name = "mkr-authority";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "mkr-authority-441a77d-source";
        url = "https://github.com/makerdao/mkr-authority";
        rev = "441a77d5e769d0a18a107522b8a99c58d0e7d55d";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    multicall_df1e59d = rec {
      name = "multicall";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "multicall-df1e59d-source";
        url = "https://github.com/makerdao/multicall";
        rev = "df1e59d39bc525d573ec351dbf23afe77c903a73";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    osm_504c474 = rec {
      name = "osm";
      deps = {
        ds-stop = ds-stop_6e2bda6;
        ds-test = ds-test_a4e4005;
        ds-value = ds-value_d2107c1;
      };
      repo' = {
        name = "osm-504c474-source";
        url = "https://github.com/makerdao/osm";
        rev = "504c47437916e29d918a9d1f40eb1f7595f3e9ce";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    proxy-registry_59e077f = rec {
      name = "proxy-registry";
      deps = {
        ds-proxy = ds-proxy_379f5e2;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "proxy-registry-59e077f-source";
        url = "https://github.com/makerdao/proxy-registry";
        rev = "59e077f30133b059e1319a4830985da54dd2ee4b";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    scd-mcd-migration_a9a1d29 = rec {
      name = "scd-mcd-migration";
      deps = {
        ds-test = ds-test_a4e4005;
        dss-cdp-manager = dss-cdp-manager_0707db9;
      };
      repo' = {
        name = "scd-mcd-migration-a9a1d29-source";
        url = "https://github.com/makerdao/scd-mcd-migration";
        rev = "a9a1d29840aadc7790d50900c300f0ddc7b32f51";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    testchain-medians_1d01e6a = rec {
      name = "testchain-medians";
      deps = {
        ds-test = ds-test_a4e4005;
        median = median_d95bbc1;
      };
      repo' = {
        name = "testchain-medians-1d01e6a-source";
        url = "https://github.com/makerdao/testchain-medians";
        rev = "1d01e6ae331bfb2381e32e005abc2b090af02fad";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    token-faucet_d7349d1 = rec {
      name = "token-faucet";
      deps = {
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
      };
      repo' = {
        name = "token-faucet-d7349d1-source";
        url = "https://github.com/makerdao/token-faucet";
        rev = "d7349d13f6cd83e8d0aa21e93544988fab0b6b24";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    vote-proxy_6fdbee3 = rec {
      name = "vote-proxy";
      deps = {
        ds-chief = ds-chief_ea05ee0;
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
      };
      repo' = {
        name = "vote-proxy-6fdbee3-source";
        url = "https://github.com/makerdao/vote-proxy";
        rev = "6fdbee3ac48bb915e715668374c1deba95cdb6f6";
        ref = "HEAD";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss-deploy-scripts = rec {
      name = "dss-deploy-scripts";
      deps = {
        dss-deploy = dss-deploy_29755b9;
        dss-deploy-pause-proxy-actions = dss-deploy-pause-proxy-actions_7d25a37;
        dss-proxy-actions = dss-proxy-actions_341d689;
        gov-polling-generator = gov-polling-generator_d08e43e;
        line-spell = line-spell_208d847;
        mkr-authority = mkr-authority_441a77d;
        multicall = multicall_df1e59d;
        osm = osm_504c474;
        scd-mcd-migration = scd-mcd-migration_a9a1d29;
        testchain-medians = testchain-medians_1d01e6a;
        token-faucet = token-faucet_d7349d1;
        vote-proxy = vote-proxy_6fdbee3;
      };
      src' = ../.;
      src = ../src;
    };
    this = dss-deploy-scripts;
  };
in {
  inherit package packageSpecs specs;
  this = package specs.this;
  deps = packageSpecs specs.this.deps;
  version = "1.1.1";
}
