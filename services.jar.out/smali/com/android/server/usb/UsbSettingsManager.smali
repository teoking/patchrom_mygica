.class Lcom/android/server/usb/UsbSettingsManager;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbSettingsManager$1;,
        Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;,
        Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;,
        Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbSettingsManager"

.field private static final USB_AUDIO_SOURCE_PATH:Ljava/lang/String; = "/proc/asound/usb_audio_info"

.field private static final sSettingsFile:Ljava/io/File;


# instance fields
.field private final mAccessoryPermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessoryPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicePermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/usb_device_manager.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usb/UsbSettingsManager;->sSettingsFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 374
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    .line 372
    new-instance v0, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    invoke-direct {v0, p0, v2}, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;-><init>(Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbSettingsManager$1;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    .line 375
    iput-object p1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 377
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 378
    :try_start_39
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->readSettingsLocked()V

    .line 379
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_44

    .line 380
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 381
    return-void

    .line 379
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbSettingsManager;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->handlePackageUpdate(Ljava/lang/String;)V

    return-void
.end method

.method private clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z
    .registers 7
    .parameter "packageName"
    .parameter "filter"

    .prologue
    .line 767
    const/4 v0, 0x0

    .line 768
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .line 769
    .local v2, test:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    invoke-virtual {p2, v2}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->matches(Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 770
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const/4 v0, 0x1

    goto :goto_b

    .line 774
    .end local v2           #test:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_24
    return v0
.end method

.method private clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z
    .registers 7
    .parameter "packageName"
    .parameter "filter"

    .prologue
    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .line 758
    .local v2, test:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    invoke-virtual {p2, v2}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 759
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    const/4 v0, 0x1

    goto :goto_b

    .line 763
    .end local v2           #test:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_24
    return v0
.end method

.method private clearPackageDefaultsLocked(Ljava/lang/String;)Z
    .registers 8
    .parameter "packageName"

    .prologue
    .line 1023
    const/4 v0, 0x0

    .line 1024
    .local v0, cleared:Z
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1025
    :try_start_4
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1027
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 1028
    .local v3, keys:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    array-length v4, v3

    if-ge v1, v4, :cond_31

    .line 1029
    aget-object v2, v3, v1

    .line 1030
    .local v2, key:Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1031
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    const/4 v0, 0x1

    .line 1028
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1036
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #keys:[Ljava/lang/Object;
    :cond_31
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1038
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 1039
    .restart local v3       #keys:[Ljava/lang/Object;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_44
    array-length v4, v3

    if-ge v1, v4, :cond_5e

    .line 1040
    aget-object v2, v3, v1

    .line 1041
    .restart local v2       #key:Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 1042
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    const/4 v0, 0x1

    .line 1039
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 1047
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #keys:[Ljava/lang/Object;
    :cond_5e
    monitor-exit v5

    return v0

    .line 1048
    :catchall_60
    move-exception v4

    monitor-exit v5
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_60

    throw v4
.end method

.method private final getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 10
    .parameter "accessory"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 531
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 532
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_2b

    .line 533
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 534
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6, p1}, Lcom/android/server/usb/UsbSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 535
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 538
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2b
    return-object v2
.end method

.method private final getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 10
    .parameter "device"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 516
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 517
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_2b

    .line 518
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 519
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, p1, v6}, Lcom/android/server/usb/UsbSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 520
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 523
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2b
    return-object v2
.end method

.method private handlePackageUpdate(Ljava/lang/String;)V
    .registers 11
    .parameter "packageName"

    .prologue
    .line 814
    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 816
    const/4 v1, 0x0

    .line 819
    .local v1, changed:Z
    :try_start_4
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x81

    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_b} :catch_12

    move-result-object v4

    .line 826
    .local v4, info:Landroid/content/pm/PackageInfo;
    :try_start_c
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 827
    .local v0, activities:[Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_30

    monitor-exit v6

    .line 844
    .end local v0           #activities:[Landroid/content/pm/ActivityInfo;
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    :goto_11
    return-void

    .line 821
    :catch_12
    move-exception v2

    .line 822
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "UsbSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePackageUpdate could not find package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 823
    monitor-exit v6

    goto :goto_11

    .line 843
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_2d
    move-exception v5

    monitor-exit v6
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_2d

    throw v5

    .line 828
    .restart local v0       #activities:[Landroid/content/pm/ActivityInfo;
    .restart local v4       #info:Landroid/content/pm/PackageInfo;
    :cond_30
    const/4 v3, 0x0

    .local v3, i:I
    :goto_31
    :try_start_31
    array-length v5, v0

    if-ge v3, v5, :cond_4d

    .line 830
    aget-object v5, v0, v3

    const-string v7, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/usb/UsbSettingsManager;->handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 832
    const/4 v1, 0x1

    .line 834
    :cond_3f
    aget-object v5, v0, v3

    const-string v7, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/usb/UsbSettingsManager;->handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 836
    const/4 v1, 0x1

    .line 828
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 840
    :cond_4d
    if-eqz v1, :cond_52

    .line 841
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    .line 843
    :cond_52
    monitor-exit v6
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_2d

    goto :goto_11
.end method

.method private handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .registers 12
    .parameter "packageName"
    .parameter "aInfo"
    .parameter "metaDataName"

    .prologue
    .line 779
    const/4 v3, 0x0

    .line 780
    .local v3, parser:Landroid/content/res/XmlResourceParser;
    const/4 v0, 0x0

    .line 783
    .local v0, changed:Z
    :try_start_2
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v5, p3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_6e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_36

    move-result-object v3

    .line 784
    if-nez v3, :cond_11

    const/4 v5, 0x0

    .line 806
    if-eqz v3, :cond_10

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 808
    :cond_10
    :goto_10
    return v5

    .line 786
    :cond_11
    :try_start_11
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 787
    :goto_14
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_75

    .line 788
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 789
    .local v4, tagName:Ljava/lang/String;
    const-string v5, "usb-device"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 790
    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    move-result-object v2

    .line 791
    .local v2, filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    invoke-direct {p0, p1, v2}, Lcom/android/server/usb/UsbSettingsManager;->clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 792
    const/4 v0, 0x1

    .line 801
    .end local v2           #filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_32
    :goto_32
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_35
    .catchall {:try_start_11 .. :try_end_35} :catchall_6e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_35} :catch_36

    goto :goto_14

    .line 803
    .end local v4           #tagName:Ljava/lang/String;
    :catch_36
    move-exception v1

    .line 804
    .local v1, e:Ljava/lang/Exception;
    :try_start_37
    const-string v5, "UsbSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_37 .. :try_end_53} :catchall_6e

    .line 806
    if-eqz v3, :cond_58

    .end local v1           #e:Ljava/lang/Exception;
    :goto_55
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_58
    move v5, v0

    .line 808
    goto :goto_10

    .line 795
    .restart local v4       #tagName:Ljava/lang/String;
    :cond_5a
    :try_start_5a
    const-string v5, "usb-accessory"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 796
    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    move-result-object v2

    .line 797
    .local v2, filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    invoke-direct {p0, p1, v2}, Lcom/android/server/usb/UsbSettingsManager;->clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z
    :try_end_69
    .catchall {:try_start_5a .. :try_end_69} :catchall_6e
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_69} :catch_36

    move-result v5

    if-eqz v5, :cond_32

    .line 798
    const/4 v0, 0x1

    goto :goto_32

    .line 806
    .end local v2           #filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    .end local v4           #tagName:Ljava/lang/String;
    :catchall_6e
    move-exception v5

    if-eqz v3, :cond_74

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_74
    throw v5

    :cond_75
    if-eqz v3, :cond_58

    goto :goto_55
.end method

.method private packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z
    .registers 14
    .parameter "info"
    .parameter "metaDataName"
    .parameter "device"
    .parameter "accessory"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 477
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 479
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 481
    .local v3, parser:Landroid/content/res/XmlResourceParser;
    :try_start_5
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7, p2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 482
    if-nez v3, :cond_2b

    .line 483
    const-string v6, "UsbSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no meta-data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_92
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_72

    .line 507
    if-eqz v3, :cond_2a

    :goto_27
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 509
    :cond_2a
    :goto_2a
    return v5

    .line 487
    :cond_2b
    :try_start_2b
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 488
    :goto_2e
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    if-eq v7, v6, :cond_99

    .line 489
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 490
    .local v4, tagName:Ljava/lang/String;
    if-eqz p3, :cond_53

    const-string v7, "usb-device"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 491
    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    move-result-object v2

    .line 492
    .local v2, filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    invoke-virtual {v2, p3}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_92
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_49} :catch_72

    move-result v7

    if-eqz v7, :cond_6e

    .line 507
    if-eqz v3, :cond_51

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_51
    move v5, v6

    .line 493
    goto :goto_2a

    .line 496
    .end local v2           #filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_53
    if-eqz p4, :cond_6e

    :try_start_55
    const-string v7, "usb-accessory"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 497
    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    move-result-object v2

    .line 498
    .local v2, filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    invoke-virtual {v2, p4}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_92
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_64} :catch_72

    move-result v7

    if-eqz v7, :cond_6e

    .line 507
    if-eqz v3, :cond_6c

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6c
    move v5, v6

    .line 499
    goto :goto_2a

    .line 502
    .end local v2           #filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_6e
    :try_start_6e
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_92
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_2e

    .line 504
    .end local v4           #tagName:Ljava/lang/String;
    :catch_72
    move-exception v1

    .line 505
    .local v1, e:Ljava/lang/Exception;
    :try_start_73
    const-string v6, "UsbSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load component info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catchall {:try_start_73 .. :try_end_8f} :catchall_92

    .line 507
    if-eqz v3, :cond_2a

    goto :goto_27

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_92
    move-exception v5

    if-eqz v3, :cond_98

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_98
    throw v5

    :cond_99
    if-eqz v3, :cond_2a

    goto :goto_27
.end method

.method private readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    const/4 v3, 0x0

    .line 386
    .local v3, packageName:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 387
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    if-ge v2, v0, :cond_18

    .line 388
    const-string v4, "package"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 389
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 393
    :cond_18
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 394
    const-string v4, "usb-device"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 395
    invoke-static {p1}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    move-result-object v1

    .line 396
    .local v1, filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .end local v1           #filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_30
    :goto_30
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 402
    return-void

    .line 387
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 397
    :cond_37
    const-string v4, "usb-accessory"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 398
    invoke-static {p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    move-result-object v1

    .line 399
    .local v1, filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30
.end method

.method private readSettingsLocked()V
    .registers 8

    .prologue
    .line 405
    const/4 v2, 0x0

    .line 407
    .local v2, stream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v5, Lcom/android/server/usb/UsbSettingsManager;->sSettingsFile:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_53
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_63
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_61

    .line 408
    .end local v2           #stream:Ljava/io/FileInputStream;
    .local v3, stream:Ljava/io/FileInputStream;
    :try_start_8
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 409
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 411
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 412
    :goto_13
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4c

    .line 413
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, tagName:Ljava/lang/String;
    const-string v5, "preference"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 415
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbSettingsManager;->readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_29} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_36

    goto :goto_13

    .line 420
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #tagName:Ljava/lang/String;
    :catch_2a
    move-exception v5

    move-object v2, v3

    .line 426
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    :goto_2c
    if-eqz v2, :cond_31

    .line 428
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_4a

    .line 433
    :cond_31
    :goto_31
    return-void

    .line 417
    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v1       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    .restart local v4       #tagName:Ljava/lang/String;
    :cond_32
    :try_start_32
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_35} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_13

    .line 422
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #tagName:Ljava/lang/String;
    :catch_36
    move-exception v0

    move-object v2, v3

    .line 423
    .end local v3           #stream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/lang/Exception;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    :goto_38
    :try_start_38
    const-string v5, "UsbSettingsManager"

    const-string v6, "error reading settings file, deleting to start fresh"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    sget-object v5, Lcom/android/server/usb/UsbSettingsManager;->sSettingsFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_53

    .line 426
    if-eqz v2, :cond_31

    .line 428
    :try_start_46
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_31

    .line 429
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4a
    move-exception v5

    goto :goto_31

    .line 426
    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v1       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :cond_4c
    if-eqz v3, :cond_51

    .line 428
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_5c

    :cond_51
    :goto_51
    move-object v2, v3

    .line 432
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    goto :goto_31

    .line 426
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_53
    move-exception v5

    :goto_54
    if-eqz v2, :cond_59

    .line 428
    :try_start_56
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    .line 426
    :cond_59
    :goto_59
    throw v5

    .line 429
    :catch_5a
    move-exception v6

    goto :goto_59

    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v1       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :catch_5c
    move-exception v5

    goto :goto_51

    .line 426
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_5e
    move-exception v5

    move-object v2, v3

    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    goto :goto_54

    .line 422
    :catch_61
    move-exception v0

    goto :goto_38

    .line 420
    :catch_63
    move-exception v5

    goto :goto_2c
.end method

.method private requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 12
    .parameter "intent"
    .parameter "packageName"
    .parameter "pi"

    .prologue
    .line 879
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 883
    .local v4, uid:I
    :try_start_4
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 884
    .local v0, aInfo:Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v4, :cond_52

    .line 885
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not match caller\'s uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_32} :catch_32

    .line 888
    .end local v0           #aInfo:Landroid/content/pm/ApplicationInfo;
    :catch_32
    move-exception v1

    .line 889
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 892
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #aInfo:Landroid/content/pm/ApplicationInfo;
    :cond_52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 893
    .local v2, identity:J
    const-string v5, "com.android.systemui"

    const-string v6, "com.android.systemui.usb.UsbPermissionActivity"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    const/high16 v5, 0x1000

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 896
    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {p1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 897
    const-string v5, "package"

    invoke-virtual {p1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    const-string v5, "uid"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 900
    :try_start_71
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_83
    .catch Landroid/content/ActivityNotFoundException; {:try_start_71 .. :try_end_76} :catch_7a

    .line 904
    :goto_76
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 906
    return-void

    .line 901
    :catch_7a
    move-exception v1

    .line 902
    .local v1, e:Landroid/content/ActivityNotFoundException;
    :try_start_7b
    const-string v5, "UsbSettingsManager"

    const-string v6, "unable to start UsbPermissionActivity"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_83

    goto :goto_76

    .line 904
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catchall_83
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V
    .registers 18
    .parameter "intent"
    .parameter
    .parameter "defaultPackage"
    .parameter "device"
    .parameter "accessory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/hardware/usb/UsbAccessory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 657
    .local p2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 660
    .local v1, count:I
    if-nez v1, :cond_40

    .line 661
    if-eqz p5, :cond_36

    .line 662
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v8

    .line 663
    .local v8, uri:Ljava/lang/String;
    if-eqz v8, :cond_36

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_36

    .line 666
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 667
    .local v3, dialogIntent:Landroid/content/Intent;
    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.usb.UsbAccessoryUriActivity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 670
    const-string v9, "accessory"

    move-object/from16 v0, p5

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 671
    const-string v9, "uri"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    :try_start_31
    iget-object v9, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_36
    .catch Landroid/content/ActivityNotFoundException; {:try_start_31 .. :try_end_36} :catch_37

    .line 753
    .end local v3           #dialogIntent:Landroid/content/Intent;
    .end local v8           #uri:Ljava/lang/String;
    :cond_36
    :goto_36
    return-void

    .line 674
    .restart local v3       #dialogIntent:Landroid/content/Intent;
    .restart local v8       #uri:Ljava/lang/String;
    :catch_37
    move-exception v4

    .line 675
    .local v4, e:Landroid/content/ActivityNotFoundException;
    const-string v9, "UsbSettingsManager"

    const-string v10, "unable to start UsbAccessoryUriActivity"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 684
    .end local v3           #dialogIntent:Landroid/content/Intent;
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    .end local v8           #uri:Ljava/lang/String;
    :cond_40
    const/4 v2, 0x0

    .line 685
    .local v2, defaultRI:Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x1

    if-ne v1, v9, :cond_62

    if-nez p3, :cond_62

    .line 688
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 689
    .local v6, rInfo:Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_62

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_62

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_62

    .line 692
    move-object v2, v6

    .line 696
    .end local v6           #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_62
    if-nez v2, :cond_7e

    if-eqz p3, :cond_7e

    .line 698
    const/4 v5, 0x0

    .local v5, i:I
    :goto_67
    if-ge v5, v1, :cond_7e

    .line 699
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 700
    .restart local v6       #rInfo:Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_ac

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ac

    .line 702
    move-object v2, v6

    .line 708
    .end local v5           #i:I
    .end local v6           #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_7e
    if-eqz v2, :cond_bd

    .line 710
    if-eqz p4, :cond_af

    .line 711
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v9}, Lcom/android/server/usb/UsbSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 718
    :cond_8d
    :goto_8d
    :try_start_8d
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 721
    iget-object v9, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8d .. :try_end_a2} :catch_a3

    goto :goto_36

    .line 722
    :catch_a3
    move-exception v4

    .line 723
    .restart local v4       #e:Landroid/content/ActivityNotFoundException;
    const-string v9, "UsbSettingsManager"

    const-string v10, "startActivity failed"

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 698
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    .restart local v5       #i:I
    .restart local v6       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_ac
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    .line 712
    .end local v5           #i:I
    .end local v6           #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_af
    if-eqz p5, :cond_8d

    .line 713
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v9}, Lcom/android/server/usb/UsbSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    goto :goto_8d

    .line 726
    :cond_bd
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 727
    .local v7, resolverIntent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v7, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 729
    const/4 v9, 0x1

    if-ne v1, v9, :cond_110

    .line 731
    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.usb.UsbConfirmActivity"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    const-string v10, "rinfo"

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 735
    if-eqz p4, :cond_108

    .line 736
    const-string v9, "device"

    move-object/from16 v0, p4

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 748
    :goto_e6
    :try_start_e6
    iget-object v9, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_eb
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e6 .. :try_end_eb} :catch_ed

    goto/16 :goto_36

    .line 749
    :catch_ed
    move-exception v4

    .line 750
    .restart local v4       #e:Landroid/content/ActivityNotFoundException;
    const-string v9, "UsbSettingsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to start activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 738
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    :cond_108
    const-string v9, "accessory"

    move-object/from16 v0, p5

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_e6

    .line 742
    :cond_110
    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.usb.UsbResolverActivity"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    const-string v9, "rlist"

    invoke-virtual {v7, v9, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 745
    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {v7, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_e6
.end method

.method private writeSettingsLocked()V
    .registers 11

    .prologue
    .line 436
    const/4 v2, 0x0

    .line 438
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v7, Lcom/android/server/usb/UsbSettingsManager;->sSettingsFile:Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 440
    .local v3, fstr:Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 441
    .local v6, str:Ljava/io/BufferedOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 442
    .local v5, serializer:Lcom/android/internal/util/FastXmlSerializer;
    const-string v7, "utf-8"

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 443
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 444
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 445
    const/4 v7, 0x0

    const-string v8, "settings"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 447
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .line 448
    .local v1, filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    const/4 v7, 0x0

    const-string v8, "preference"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 449
    const/4 v8, 0x0

    const-string v9, "package"

    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v8, v9, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    invoke-virtual {v1, v5}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 451
    const/4 v7, 0x0

    const-string v8, "preference"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5f} :catch_60

    goto :goto_36

    .line 467
    .end local v1           #filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    .end local v3           #fstr:Ljava/io/FileOutputStream;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #serializer:Lcom/android/internal/util/FastXmlSerializer;
    .end local v6           #str:Ljava/io/BufferedOutputStream;
    :catch_60
    move-exception v0

    .line 468
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "UsbSettingsManager"

    const-string v8, "error writing settings file, deleting to start fresh"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    sget-object v7, Lcom/android/server/usb/UsbSettingsManager;->sSettingsFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 471
    .end local v0           #e:Ljava/lang/Exception;
    :goto_6d
    return-void

    .line 454
    .restart local v3       #fstr:Ljava/io/FileOutputStream;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #serializer:Lcom/android/internal/util/FastXmlSerializer;
    .restart local v6       #str:Ljava/io/BufferedOutputStream;
    :cond_6e
    :try_start_6e
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_78
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .line 455
    .local v1, filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    const/4 v7, 0x0

    const-string v8, "preference"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 456
    const/4 v8, 0x0

    const-string v9, "package"

    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v8, v9, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 457
    invoke-virtual {v1, v5}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 458
    const/4 v7, 0x0

    const-string v8, "preference"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_78

    .line 461
    .end local v1           #filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_a2
    const/4 v7, 0x0

    const-string v8, "settings"

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 462
    invoke-virtual {v5}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 464
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 465
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 466
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_b4} :catch_60

    goto :goto_6d
.end method


# virtual methods
.method public accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V
    .registers 8
    .parameter "accessory"

    .prologue
    .line 629
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "accessory"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 631
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 635
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 636
    :try_start_14
    invoke-direct {p0, p1, v1}, Lcom/android/server/usb/UsbSettingsManager;->getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    .line 639
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    invoke-direct {v5, p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 640
    .local v3, defaultPackage:Ljava/lang/String;
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_2d

    .line 642
    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    .line 643
    return-void

    .line 640
    .end local v2           #matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #defaultPackage:Ljava/lang/String;
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V
    .registers 4
    .parameter "accessory"

    .prologue
    .line 647
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 651
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 652
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 653
    return-void
.end method

.method public checkPermission(Landroid/hardware/usb/UsbAccessory;)V
    .registers 5
    .parameter "accessory"

    .prologue
    .line 873
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 874
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given permission to accessory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_1f
    return-void
.end method

.method public checkPermission(Landroid/hardware/usb/UsbDevice;)V
    .registers 5
    .parameter "device"

    .prologue
    .line 867
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 868
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given permission to device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_1f
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;)V
    .registers 4
    .parameter "packageName"

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1016
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->clearPackageDefaultsLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1017
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    .line 1019
    :cond_c
    monitor-exit v1

    .line 1020
    return-void

    .line 1019
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public deviceAttached(Landroid/hardware/usb/UsbDevice;)V
    .registers 21
    .parameter "device"

    .prologue
    .line 542
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .local v3, intent:Landroid/content/Intent;
    const-string v2, "device"

    move-object/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 544
    const/high16 v2, 0x1000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 546
    const/16 v17, 0x0

    .line 549
    .local v17, usbAudio:Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 550
    :try_start_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/usb/UsbSettingsManager;->getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v4

    .line 553
    .local v4, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    new-instance v7, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 554
    .local v5, defaultPackage:Ljava/lang/String;
    monitor-exit v6
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_87

    .line 556
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/usb/UsbSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    .line 558
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    new-array v14, v2, [Landroid/hardware/usb/UsbInterface;

    .line 559
    .local v14, interfaces:[Landroid/hardware/usb/UsbInterface;
    const/4 v15, 0x0

    .local v15, intf:I
    :goto_43
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    if-ge v15, v2, :cond_8a

    .line 560
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    aput-object v2, v14, v15

    .line 561
    const-string v2, "UsbSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interfaces"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "num"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v14, v15

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    aget-object v2, v14, v15

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_84

    .line 563
    const/16 v17, 0x1

    .line 559
    :cond_84
    add-int/lit8 v15, v15, 0x1

    goto :goto_43

    .line 554
    .end local v4           #matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #defaultPackage:Ljava/lang/String;
    .end local v14           #interfaces:[Landroid/hardware/usb/UsbInterface;
    .end local v15           #intf:I
    :catchall_87
    move-exception v2

    :try_start_88
    monitor-exit v6
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v2

    .line 565
    .restart local v4       #matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #defaultPackage:Ljava/lang/String;
    .restart local v14       #interfaces:[Landroid/hardware/usb/UsbInterface;
    .restart local v15       #intf:I
    :cond_8a
    if-eqz v17, :cond_118

    .line 567
    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.intent.action.USB_AUDIO_DEVICE_PLUG"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v13, intentUsbAudio:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v13, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 569
    const/high16 v2, 0x4000

    invoke-virtual {v13, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 570
    new-instance v11, Ljava/io/File;

    const-string v2, "/proc/asound/usb_audio_info"

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    .local v11, fileUsbAudio:Ljava/io/File;
    const/4 v12, 0x0

    .local v12, i:I
    const/16 v18, 0x5

    .line 575
    .local v18, waitSec:I
    :goto_a7
    :try_start_a7
    const-string v2, "UsbSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "********Try file UsbAudio*********"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c7
    .catch Ljava/lang/InterruptedException; {:try_start_a7 .. :try_end_c7} :catch_119
    .catch Ljava/io/FileNotFoundException; {:try_start_a7 .. :try_end_c7} :catch_122

    .line 578
    :goto_c7
    :try_start_c7
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 585
    :goto_cd
    new-instance v16, Ljava/util/Scanner;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 586
    .local v16, scanner:Ljava/util/Scanner;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->nextInt()I

    move-result v8

    .line 587
    .local v8, card:I
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->nextInt()I

    move-result v9

    .line 588
    .local v9, deviceNum:I
    const-string v2, "UsbSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "card="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "::device="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v2, "state"

    const/4 v6, 0x1

    invoke-virtual {v13, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    const-string v2, "card"

    invoke-virtual {v13, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    const-string v2, "device"

    invoke-virtual {v13, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 593
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->close()V

    .line 598
    .end local v8           #card:I
    .end local v9           #deviceNum:I
    .end local v11           #fileUsbAudio:Ljava/io/File;
    .end local v12           #i:I
    .end local v13           #intentUsbAudio:Landroid/content/Intent;
    .end local v16           #scanner:Ljava/util/Scanner;
    .end local v18           #waitSec:I
    :cond_118
    :goto_118
    return-void

    .line 577
    .restart local v11       #fileUsbAudio:Ljava/io/File;
    .restart local v12       #i:I
    .restart local v13       #intentUsbAudio:Landroid/content/Intent;
    .restart local v18       #waitSec:I
    :catch_119
    move-exception v10

    .local v10, e:Ljava/lang/InterruptedException;
    const-string v2, "UsbSettingsManager"

    const-string v6, "audio source file does not exist"

    invoke-static {v2, v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_121
    .catch Ljava/io/FileNotFoundException; {:try_start_c7 .. :try_end_121} :catch_122

    goto :goto_c7

    .line 594
    .end local v10           #e:Ljava/lang/InterruptedException;
    :catch_122
    move-exception v10

    .line 595
    .local v10, e:Ljava/io/FileNotFoundException;
    const-string v2, "UsbSettingsManager"

    const-string v6, "ERROR, could not open usb audio info file"

    invoke-static {v2, v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_118

    .line 579
    .end local v10           #e:Ljava/io/FileNotFoundException;
    :cond_12b
    move/from16 v0, v18

    if-lt v12, v0, :cond_151

    .line 580
    :try_start_12f
    const-string v2, "UsbSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERROR!!, Can\'t get usbStream file after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catch Ljava/io/FileNotFoundException; {:try_start_12f .. :try_end_14f} :catch_122

    goto/16 :goto_cd

    .line 583
    :cond_151
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_a7
.end method

.method public deviceDetached(Landroid/hardware/usb/UsbDevice;)V
    .registers 10
    .parameter "device"

    .prologue
    .line 602
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const/4 v4, 0x0

    .line 605
    .local v4, usbAudio:Z
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "device"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 608
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 610
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v5

    new-array v2, v5, [Landroid/hardware/usb/UsbInterface;

    .line 611
    .local v2, interfaces:[Landroid/hardware/usb/UsbInterface;
    const/4 v3, 0x0

    .local v3, intf:I
    :goto_22
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v5

    if-ge v3, v5, :cond_63

    .line 612
    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v5

    aput-object v5, v2, v3

    .line 613
    const-string v5, "UsbSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interfaces"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "num"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    aget-object v5, v2, v3

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_60

    .line 615
    const/4 v4, 0x1

    .line 611
    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 619
    :cond_63
    if-eqz v4, :cond_77

    .line 621
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.USB_AUDIO_DEVICE_PLUG"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v1, intentUsbAudio:Landroid/content/Intent;
    const-string v5, "state"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 623
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 626
    .end local v1           #intentUsbAudio:Landroid/content/Intent;
    :cond_77
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 13
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 1052
    iget-object v8, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1053
    :try_start_3
    const-string v7, "  Device permissions:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_73

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1055
    .local v2, deviceName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1056
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    .line 1057
    .local v6, uidList:Landroid/util/SparseBooleanArray;
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 1058
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_47
    if-ge v4, v1, :cond_6a

    .line 1059
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 1061
    :cond_6a
    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 1081
    .end local v1           #count:I
    .end local v2           #deviceName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #uidList:Landroid/util/SparseBooleanArray;
    :catchall_70
    move-exception v7

    monitor-exit v8
    :try_end_72
    .catchall {:try_start_3 .. :try_end_72} :catchall_70

    throw v7

    .line 1063
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_73
    :try_start_73
    const-string v7, "  Accessory permissions:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 1065
    .local v0, accessory:Landroid/hardware/usb/UsbAccessory;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    .line 1067
    .restart local v6       #uidList:Landroid/util/SparseBooleanArray;
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 1068
    .restart local v1       #count:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_b7
    if-ge v4, v1, :cond_da

    .line 1069
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1068
    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    .line 1071
    :cond_da
    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_82

    .line 1073
    .end local v0           #accessory:Landroid/hardware/usb/UsbAccessory;
    .end local v1           #count:I
    .end local v4           #i:I
    .end local v6           #uidList:Landroid/util/SparseBooleanArray;
    :cond_e0
    const-string v7, "  Device preferences:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ef
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_124

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .line 1075
    .local v3, filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ef

    .line 1077
    .end local v3           #filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_124
    const-string v7, "  Accessory preferences:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_133
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_168

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .line 1079
    .local v3, filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_133

    .line 1081
    .end local v3           #filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_168
    monitor-exit v8
    :try_end_169
    .catchall {:try_start_73 .. :try_end_169} :catchall_70

    .line 1082
    return-void
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 6
    .parameter "accessory"
    .parameter "uid"

    .prologue
    .line 996
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 997
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 998
    .local v0, uidList:Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_18

    .line 999
    new-instance v0, Landroid/util/SparseBooleanArray;

    .end local v0           #uidList:Landroid/util/SparseBooleanArray;
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1000
    .restart local v0       #uidList:Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    :cond_18
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1003
    monitor-exit v2

    .line 1004
    return-void

    .line 1003
    .end local v0           #uidList:Landroid/util/SparseBooleanArray;
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 7
    .parameter "device"
    .parameter "uid"

    .prologue
    .line 984
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 985
    :try_start_3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 986
    .local v0, deviceName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 987
    .local v1, uidList:Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_1c

    .line 988
    new-instance v1, Landroid/util/SparseBooleanArray;

    .end local v1           #uidList:Landroid/util/SparseBooleanArray;
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 989
    .restart local v1       #uidList:Landroid/util/SparseBooleanArray;
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    :cond_1c
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 992
    monitor-exit v3

    .line 993
    return-void

    .line 992
    .end local v0           #deviceName:Ljava/lang/String;
    .end local v1           #uidList:Landroid/util/SparseBooleanArray;
    :catchall_22
    move-exception v2

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public hasDefaults(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    const/4 v0, 0x1

    .line 1007
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1008
    :try_start_4
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    monitor-exit v1

    .line 1010
    :goto_11
    return v0

    .line 1009
    :cond_12
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    monitor-exit v1

    goto :goto_11

    .line 1011
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0

    .line 1010
    :cond_23
    const/4 v0, 0x0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_20

    goto :goto_11
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 5
    .parameter "accessory"

    .prologue
    .line 857
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 858
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 859
    .local v0, uidList:Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_10

    .line 860
    const/4 v1, 0x0

    monitor-exit v2

    .line 862
    :goto_f
    return v1

    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v2

    goto :goto_f

    .line 863
    .end local v0           #uidList:Landroid/util/SparseBooleanArray;
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    .registers 6
    .parameter "device"

    .prologue
    .line 847
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 848
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 849
    .local v0, uidList:Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_14

    .line 850
    const/4 v1, 0x0

    monitor-exit v2

    .line 852
    :goto_13
    return v1

    :cond_14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v2

    goto :goto_13

    .line 853
    .end local v0           #uidList:Landroid/util/SparseBooleanArray;
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 7
    .parameter "accessory"
    .parameter "packageName"
    .parameter "pi"

    .prologue
    .line 929
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 932
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 933
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 934
    const-string v1, "permission"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 936
    :try_start_16
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_16 .. :try_end_1c} :catch_26

    .line 945
    :goto_1c
    return-void

    .line 943
    :cond_1d
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 944
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_1c

    .line 937
    :catch_26
    move-exception v1

    goto :goto_1c
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 7
    .parameter "device"
    .parameter "packageName"
    .parameter "pi"

    .prologue
    .line 909
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 912
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 913
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 914
    const-string v1, "permission"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 916
    :try_start_16
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_16 .. :try_end_1c} :catch_26

    .line 926
    :goto_1c
    return-void

    .line 924
    :cond_1d
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 925
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_1c

    .line 917
    :catch_26
    move-exception v1

    goto :goto_1c
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V
    .registers 9
    .parameter "accessory"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 966
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 967
    .local v1, filter:Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    const/4 v0, 0x0

    .line 968
    .local v0, changed:Z
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 969
    if-nez p2, :cond_1f

    .line 970
    :try_start_d
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1d

    move v0, v2

    .line 977
    :cond_16
    :goto_16
    if-eqz v0, :cond_1b

    .line 978
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    .line 980
    :cond_1b
    monitor-exit v4

    .line 981
    return-void

    :cond_1d
    move v0, v3

    .line 970
    goto :goto_16

    .line 972
    :cond_1f
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    move v0, v2

    .line 973
    :goto_2c
    if-eqz v0, :cond_16

    .line 974
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 980
    :catchall_34
    move-exception v2

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_34

    throw v2

    :cond_37
    move v0, v3

    .line 972
    goto :goto_2c
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .registers 9
    .parameter "device"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 948
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 949
    .local v1, filter:Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    const/4 v0, 0x0

    .line 950
    .local v0, changed:Z
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 951
    if-nez p2, :cond_1f

    .line 952
    :try_start_d
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1d

    move v0, v2

    .line 959
    :cond_16
    :goto_16
    if-eqz v0, :cond_1b

    .line 960
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    .line 962
    :cond_1b
    monitor-exit v4

    .line 963
    return-void

    :cond_1d
    move v0, v3

    .line 952
    goto :goto_16

    .line 954
    :cond_1f
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    move v0, v2

    .line 955
    :goto_2c
    if-eqz v0, :cond_16

    .line 956
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 962
    :catchall_34
    move-exception v2

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_34

    throw v2

    :cond_37
    move v0, v3

    .line 954
    goto :goto_2c
.end method
