{extends file='frontend/index/index.tpl'}

{block name="frontend_index_header_javascript" append}
<script type="text/javascript">
  //<![CDATA[
  if(top!=self){
    top.location=self.location;
  }
  //]]>
</script>
{/block}

{* Breadcrumb *}
{block name='frontend_index_start' append}
{$sBreadcrumb = [['name'=>"{s namespace='frontend/MoptPaymentPayone/payment' name=paymentTitle}Zahlung durchführen{/s}"]]}
{/block}

{* Hide sidebar left *}
{block name='frontend_index_content_left'}{/block}

{* Main content *}
{block name="frontend_index_content"}
<div id="center" class="grid_13">

  <h2>{$errormessage}</h2>
  <br />

  <div class="actions">
    <a class="btn" href="{url controller=checkout action=cart forceSecure}" title="{s namespace='frontend/MoptPaymentPayone/payment' name=PaymentLinkChangeBasket}Warenkorb ändern{/s}">
      {s namespace='frontend/MoptPaymentPayone/payment' name=PaymentLinkChangeBasket}{/s}
    </a>
    <a class="btn" href="{url controller=account action=payment sTarget=checkout sChange=1 forceSecure}" title="{s namespace='frontend/MoptPaymentPayone/payment' name=PaymentLinkChange}Zahlungsart ändern{/s}">
      {s namespace='frontend/MoptPaymentPayone/payment' name=PaymentLinkChange}{/s}
    </a>
  </div>

</div>
{/block}

{block name='frontend_index_actions'}{/block}