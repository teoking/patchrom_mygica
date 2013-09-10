.class Lcom/android/server/AlarmManagerService$AppBlacklistItem;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppBlacklistItem"
.end annotation


# static fields
.field public static final REMOVE:I = 0x1

.field public static final REPlACE:I


# instance fields
.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 660
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 661
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AlarmManagerService$AppBlacklistItem;->type:I

    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AppBlacklistItem;->name:Ljava/lang/String;

    .line 663
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "inName"
    .parameter "inType"

    .prologue
    .line 665
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AppBlacklistItem;->name:Ljava/lang/String;

    .line 667
    const-string v0, "remove"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AlarmManagerService$AppBlacklistItem;->type:I

    .line 671
    :goto_0
    return-void

    .line 670
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AlarmManagerService$AppBlacklistItem;->type:I

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "pw"

    .prologue
    .line 688
    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 689
    iget v0, p0, Lcom/android/server/AlarmManagerService$AppBlacklistItem;->type:I

    if-nez v0, :cond_0

    .line 690
    const-string v0, " REPLACE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 693
    :goto_0
    const-string v0, " name="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AppBlacklistItem;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    return-void

    .line 692
    :cond_0
    const-string v0, " REMOVE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 677
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "AppBlacklistItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    iget v1, p0, Lcom/android/server/AlarmManagerService$AppBlacklistItem;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 681
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AppBlacklistItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
