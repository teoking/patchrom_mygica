.class Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;
.super Ljava/lang/Object;
.source "CdmaLteUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimSpnLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    const-string v0, "EF_CSIM_SPN"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 14
    .parameter "ar"

    .prologue
    const/4 v7, 0x1

    const/16 v9, 0x20

    const/4 v8, 0x0

    .line 109
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    .line 110
    .local v0, data:[B
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CSIM_SPN="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    .line 114
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    aget-byte v6, v0, v8

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_57

    move v6, v7

    :goto_30
    iput-boolean v6, v10, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mCsimSpnDisplayCondition:Z

    .line 116
    aget-byte v2, v0, v7

    .line 117
    .local v2, encoding:I
    const/4 v6, 0x2

    aget-byte v3, v0, v6

    .line 118
    .local v3, language:I
    new-array v5, v9, [B

    .line 119
    .local v5, spnData:[B
    const/4 v7, 0x3

    array-length v6, v0

    if-ge v6, v9, :cond_59

    array-length v6, v0

    :goto_3e
    invoke-static {v0, v7, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    const/4 v4, 0x0

    .local v4, numBytes:I
    :goto_42
    array-length v6, v5

    if-ge v4, v6, :cond_4d

    .line 123
    aget-byte v6, v5, v4

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xff

    if-ne v6, v7, :cond_5b

    .line 126
    :cond_4d
    if-nez v4, :cond_5e

    .line 127
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$202(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    :goto_56
    return-void

    .end local v2           #encoding:I
    .end local v3           #language:I
    .end local v4           #numBytes:I
    .end local v5           #spnData:[B
    :cond_57
    move v6, v8

    .line 114
    goto :goto_30

    .restart local v2       #encoding:I
    .restart local v3       #language:I
    .restart local v5       #spnData:[B
    :cond_59
    move v6, v9

    .line 119
    goto :goto_3e

    .line 122
    .restart local v4       #numBytes:I
    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 131
    :cond_5e
    packed-switch v2, :pswitch_data_f8

    .line 145
    :pswitch_61
    :try_start_61
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    const-string v7, "SPN encoding not supported"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_68} :catch_be

    .line 150
    :goto_68
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "spn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    invoke-static {v8}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$600(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    .line 151
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "spnCondition="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    iget-boolean v8, v8, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    .line 152
    const-string v6, "gsm.sim.operator.alpha"

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    invoke-static {v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$700(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    .line 134
    :pswitch_b0
    :try_start_b0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "ISO-8859-1"

    invoke-direct {v7, v5, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$302(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_bd} :catch_be

    goto :goto_68

    .line 147
    :catch_be
    move-exception v1

    .line 148
    .local v1, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "spn decode error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    goto :goto_68

    .line 139
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_d9
    :try_start_d9
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    const/4 v7, 0x0

    mul-int/lit8 v8, v4, 0x8

    div-int/lit8 v8, v8, 0x7

    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$402(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_68

    .line 142
    :pswitch_e8
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "utf-16"

    invoke-direct {v7, v5, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$502(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_f6} :catch_be

    goto/16 :goto_68

    .line 131
    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_61
        :pswitch_d9
        :pswitch_d9
        :pswitch_e8
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_b0
        :pswitch_d9
    .end packed-switch
.end method
