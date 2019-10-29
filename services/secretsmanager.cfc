component {

    variables.service = 'secretsmanager';

    public any function init(
        required any api,
        required struct settings
    ) {
        variables.api = arguments.api;
        variables.utils = variables.api.getUtils();
        variables.apiVersion = arguments.settings.apiVersion;
        return this;
    }

    /*
    * Disables automatic scheduled rotation and cancels the rotation of a secret if one is currently in progress.
    * https://docs.aws.amazon.com/en_pv/secretsmanager/latest/apireference/API_CancelRotateSecret
    * @SecretId 
    */
    public any function cancelRotateSecret( required string SecretId ) {

    }

    /*
    * DCreates a new secret. A secret in Secrets Manager consists of both the protected secret data and the important information needed to manage the secret.
    * https://docs.aws.amazon.com/en_pv/secretsmanager/latest/apireference/API_CreateSecret.html
    * 
    */
    public any function createSecret( required string SecretId ) {

    }

    /*
    * Deletes the resource-based permission policy that's attached to the secret.
    * https://docs.aws.amazon.com/en_pv/secretsmanager/latest/apireference/API_DeleteResourcePolicy.html
    * @SecretId 
    */
    public any function deleteResourcePolicy( required string SecretId ) {

    }

    /*
    * Deletes an entire secret and all of its versions. You can optionally include a recovery window during which you can restore the secret. If you don't specify a recovery window value, the operation defaults to 30 days. Secrets Manager attaches a DeletionDate stamp to the secret that specifies the end of the recovery window. At the end of the recovery window, Secrets Manager deletes the secret permanently.
    * https://docs.aws.amazon.com/en_pv/secretsmanager/latest/apireference/API_DeleteSecret.html
    * @SecretId 
    */
    public any function deleteSecret( required string SecretId ) {

    }

    /*
    * Generates a random password of the specified complexity. This operation is intended for use in the Lambda rotation function. Per best practice, we recommend that you specify the maximum length and include every character type that the system you are generating a password for can support.
    * https://docs.aws.amazon.com/en_pv/secretsmanager/latest/apireference/API_GetRandomPassword.html
    * @SecretId 
    */
    public any function getRandomPassword( required string SecretId ) {

    }

    /*
    * Retrieves the JSON text of the resource-based policy document that's attached to the specified secret. The JSON request string input and response output are shown formatted with white space and line breaks for better readability. Submit your input as a single line JSON string.
    * https://docs.aws.amazon.com/en_pv/secretsmanager/latest/apireference/API_GetResourcePolicy.html
    * @SecretId 
    */
    public any function getResourcePolicy( required string SecretId ) {

    }

    /*
    * Retrieves the contents of the encrypted fields SecretString or SecretBinary from the specified version of a secret, whichever contains content.
    * https://docs.aws.amazon.com/en_pv/secretsmanager/latest/apireference/API_GetSecretValue.html
    * @SecretId 
    */
    public any function getSecretValue( required string SecretId ) {

    }

    /*
    * Lists all of the secrets that are stored by Secrets Manager in the AWS account. To list the versions currently stored for a specific secret, use ListSecretVersionIds. The encrypted fields SecretString and SecretBinary are not included in the output. To get that information, call the GetSecretValue operation.
    * https://docs.aws.amazon.com/en_pv/secretsmanager/latest/apireference/API_ListSecrets.html
    * @SecretId 
    */
    public any function listSecrets( numeric MaxResults, string NextToken ) {
        var requestSettings = api.resolveRequestSettings( argumentCollection = arguments );
        var payload = {};

        if ( structKeyExists( arguments, 'MaxResults' ) ) payload[ 'MaxResults' ] = arguments.MaxResults;
        if ( structKeyExists( arguments, 'NextToken' ) ) payload[ 'NextToken' ] = arguments.NextToken;

        return apiCall( requestSettings=requestSettings, path='ListSecrets', payload=payload );
    }

    /*
    * Lists all of the versions attached to the specified secret. The output does not include the SecretString or SecretBinary fields. By default, the list includes only versions that have at least one staging label in VersionStage attached.
    * https://docs.aws.amazon.com/en_pv/secretsmanager/latest/apireference/API_ListSecretVersionIds.html
    * @SecretId 
    */
    public any function listSecretVersionIds( required string SecretId ) {

    }

    /*
    * Attaches the contents of the specified resource-based permission policy to a secret. A resource-based policy is optional. Alternatively, you can use IAM identity-based policies that specify the secret's Amazon Resource Name (ARN) in the policy statement's Resources element. You can also use a combination of both identity-based and resource-based policies. The affected users and roles receive the permissions that are permitted by all of the relevant policies. For more information, see Using Resource-Based Policies for AWS Secrets Manager. For the complete description of the AWS policy syntax and grammar, see IAM JSON Policy Reference in the IAM User Guide.
    * https://docs.aws.amazon.com/en_pv/secretsmanager/latest/apireference/API_PutResourcePolicy.html
    * @SecretId 
    */
    public any function putResourcePolicy( required string SecretId ) {

    }

    /*
    * Stores a new encrypted secret value in the specified secret. To do this, the operation creates a new version and attaches it to the secret. The version can contain a new SecretString value or a new SecretBinary value. You can also specify the staging labels that are initially attached to the new version.
    * https://docs.aws.amazon.com/en_pv/secretsmanager/latest/apireference/API_PutSecretValue.html
    * @SecretId 
    */
    public any function putSecretValue( required string SecretId ) {

    }

    /*
    * Cancels the scheduled deletion of a secret by removing the DeletedDate time stamp. This makes the secret accessible to query once again.
    * https://docs.aws.amazon.com/en_pv/secretsmanager/latest/apireference/API_RestoreSecret.html
    * @SecretId 
    */
    public any function restoreSecret( required string SecretId ) {

    }

    /*
    * 
    * https://docs.aws.amazon.com/en_pv/secretsmanager/latest/apireference/API_RotateSecret.html
    * @SecretId 
    */
    public any function rotateSecret( required string SecretId ) {

    }

    /*
    * Attaches one or more tags, each consisting of a key name and a value, to the specified secret. Tags are part of the secret's overall metadata, and are not associated with any specific version of the secret. This operation only appends tags to the existing list of tags. To remove tags, you must use UntagResource.
    * https://docs.aws.amazon.com/en_pv/secretsmanager/latest/apireference/API_TagResource.html
    * @SecretId 
    */
    public any function tagResource( required string SecretId ) {

    }

    /*
    * Removes one or more tags from the specified secret.
    * https://docs.aws.amazon.com/en_pv/secretsmanager/latest/apireference/API_UntagResource.html
    * @SecretId 
    */
    public any function untagResource( required string SecretId ) {

    }

    /*
    * Modifies many of the details of the specified secret. If you include a ClientRequestToken and either SecretString or SecretBinary then it also creates a new version attached to the secret.
    * https://docs.aws.amazon.com/en_pv/secretsmanager/latest/apireference/API_UpdateSecret.html
    * @SecretId 
    */
    public any function updateSecret( required string SecretId ) {

    }

    /*
    * 
    * https://docs.aws.amazon.com/en_pv/secretsmanager/latest/apireference/API_UpdateSecretVersionStage.html
    * @SecretId 
    */
    public any function updateSecretVersionStage( required string SecretId ) {

    }


    // private

    private string function getHost(
        required string region
    ) {
        return variables.service & '.' & region & '.amazonaws.com';
    }

    private any function apiCall(
        required struct requestSettings,
        string httpMethod = 'GET',
        string path = '/',
        struct queryParams = { },
        struct headers = { },
        any payload = ''
    ) {
        var host = getHost( requestSettings.region );
        var payloadString = payload.isEmpty() ? '' : serializeJSON( payload );
        structAppend( queryParams, { 'Version': variables.apiVersion }, false );
        return api.call(
            variables.service,
            host,
            requestSettings.region,
            httpMethod,
            path,
            queryParams,
            headers,
            payloadString,
            requestSettings.awsCredentials
        );
    }

}
