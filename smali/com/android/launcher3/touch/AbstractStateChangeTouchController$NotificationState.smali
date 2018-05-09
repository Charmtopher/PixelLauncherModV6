.class final enum Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;
.super Ljava/lang/Enum;
.source "AllAppsTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/touch/AbstractStateChangeTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NotificationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

.field public static final enum Closed:Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

.field public static final enum Free:Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

.field public static final enum Locked:Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

.field public static final enum Opened:Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    const-string v1, "Locked"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;->Locked:Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    .line 115
    new-instance v0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    const-string v1, "Free"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;->Free:Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    .line 116
    new-instance v0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    const-string v1, "Opened"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;->Opened:Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    .line 117
    new-instance v0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    const-string v1, "Closed"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;->Closed:Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    .line 113
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    sget-object v1, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;->Locked:Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;->Free:Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;->Opened:Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;->Closed:Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;->$VALUES:[Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    const-class v0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;->$VALUES:[Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    invoke-virtual {v0}, [Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/touch/AbstractStateChangeTouchController$NotificationState;

    return-object v0
.end method
