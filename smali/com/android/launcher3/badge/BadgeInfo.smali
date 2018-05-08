.class public Lcom/android/launcher3/badge/BadgeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mNotificationKeys:Ljava/util/List;

.field public mPackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

.field private mTotalCount:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mPackageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public final addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 58
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationKeyData;

    .line 60
    :goto_0
    if-eqz v0, :cond_2

    .line 61
    iget v1, v0, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    iget v2, p1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    if-ne v1, v2, :cond_1

    .line 62
    const/4 p1, 0x0

    return p1

    .line 65
    :cond_1
    iget v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    iget v2, v0, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    .line 66
    iget v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    iget v2, p1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    .line 67
    iget p1, p1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    iput p1, v0, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    .line 68
    const/4 p1, 0x1

    return p1

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    iget v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    iget p1, p1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    .line 74
    :cond_3
    return v0
.end method

.method public getNotificationCount()I
    .locals 2

    .line 93
    iget v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final removeNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    iget v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    iget p1, p1, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/badge/BadgeInfo;->mTotalCount:I

    .line 85
    :cond_0
    return v0
.end method
