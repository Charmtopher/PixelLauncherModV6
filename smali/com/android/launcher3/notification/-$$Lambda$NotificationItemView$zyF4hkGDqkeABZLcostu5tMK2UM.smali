.class public final synthetic Lcom/android/launcher3/notification/-$$Lambda$NotificationItemView$zyF4hkGDqkeABZLcostu5tMK2UM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/launcher3/notification/NotificationFooterLayout$IconAnimationEndListener;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/notification/NotificationItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/notification/NotificationItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/notification/-$$Lambda$NotificationItemView$zyF4hkGDqkeABZLcostu5tMK2UM;->f$0:Lcom/android/launcher3/notification/NotificationItemView;

    return-void
.end method


# virtual methods
.method public final onIconAnimationEnd(Lcom/android/launcher3/notification/NotificationInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/notification/-$$Lambda$NotificationItemView$zyF4hkGDqkeABZLcostu5tMK2UM;->f$0:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-static {v0, p1}, Lcom/android/launcher3/notification/NotificationItemView;->lambda$trimNotifications$0(Lcom/android/launcher3/notification/NotificationItemView;Lcom/android/launcher3/notification/NotificationInfo;)V

    return-void
.end method
