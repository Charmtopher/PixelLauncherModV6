.class public final synthetic Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$Pin$CEaWVCwYeYN8KHoUzK4-cdTYR94;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/TaskSystemShortcut$Pin;

.field private final synthetic f$1:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private final synthetic f$2:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TaskSystemShortcut$Pin;Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$Pin$CEaWVCwYeYN8KHoUzK4-cdTYR94;->f$0:Lcom/android/quickstep/TaskSystemShortcut$Pin;

    iput-object p2, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$Pin$CEaWVCwYeYN8KHoUzK4-cdTYR94;->f$1:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iput-object p3, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$Pin$CEaWVCwYeYN8KHoUzK4-cdTYR94;->f$2:Lcom/android/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$Pin$CEaWVCwYeYN8KHoUzK4-cdTYR94;->f$0:Lcom/android/quickstep/TaskSystemShortcut$Pin;

    iget-object v1, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$Pin$CEaWVCwYeYN8KHoUzK4-cdTYR94;->f$1:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iget-object v2, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$Pin$CEaWVCwYeYN8KHoUzK4-cdTYR94;->f$2:Lcom/android/quickstep/views/TaskView;

    invoke-static {v0, v1, v2, p1}, Lcom/android/quickstep/TaskSystemShortcut$Pin;->lambda$getOnClickListener$1(Lcom/android/quickstep/TaskSystemShortcut$Pin;Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/quickstep/views/TaskView;Landroid/view/View;)V

    return-void
.end method
