.class public Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;
.super Ljava/lang/Object;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TxRxSum"
.end annotation


# instance fields
.field public rxPkts:J

.field final synthetic this$0:Lcom/android/internal/telephony/DataConnectionTracker;

.field public txPkts:J


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 406
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->reset()V

    .line 407
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;JJ)V
    .registers 6
    .parameter
    .parameter "txPkts"
    .parameter "rxPkts"

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-wide p2, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    .line 411
    iput-wide p4, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    .line 412
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;)V
    .registers 5
    .parameter
    .parameter "sum"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iget-wide v0, p2, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    .line 416
    iget-wide v0, p2, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    .line 417
    return-void
.end method


# virtual methods
.method public reset()V
    .registers 3

    .prologue
    const-wide/16 v0, -0x1

    .line 420
    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    .line 421
    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    .line 422
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{txSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rxSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTxRxSum()V
    .registers 16

    .prologue
    .line 429
    const/4 v12, 0x0

    .local v12, txUpdated:Z
    const/4 v7, 0x0

    .line 430
    .local v7, rxUpdated:Z
    const-wide/16 v10, 0x0

    .local v10, txSum:J
    const-wide/16 v5, 0x0

    .line 431
    .local v5, rxSum:J
    iget-object v13, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v13}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 432
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v13, v14, :cond_12

    .line 433
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 434
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v1, :cond_12

    .line 436
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v4

    .line 437
    .local v4, linkProp:Landroid/net/LinkProperties;
    if-eqz v4, :cond_12

    .line 439
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, iface:Ljava/lang/String;
    if-eqz v3, :cond_12

    .line 442
    invoke-static {v3}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v8

    .line 443
    .local v8, stats:J
    const-wide/16 v13, 0x0

    cmp-long v13, v8, v13

    if-lez v13, :cond_44

    .line 444
    const/4 v12, 0x1

    .line 445
    add-long/2addr v10, v8

    .line 447
    :cond_44
    invoke-static {v3}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v8

    .line 448
    const-wide/16 v13, 0x0

    cmp-long v13, v8, v13

    if-lez v13, :cond_12

    .line 449
    const/4 v7, 0x1

    .line 450
    add-long/2addr v5, v8

    goto :goto_12

    .line 455
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #iface:Ljava/lang/String;
    .end local v4           #linkProp:Landroid/net/LinkProperties;
    .end local v8           #stats:J
    :cond_51
    if-eqz v12, :cond_55

    iput-wide v10, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    .line 456
    :cond_55
    if-eqz v7, :cond_59

    iput-wide v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    .line 457
    :cond_59
    return-void
.end method
