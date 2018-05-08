.class public Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;
.super Lcom/android/launcher3/widget/WidgetAddFlowHandler;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler$1;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;Landroid/content/pm/LauncherApps$PinItemRequest;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 45
    iput-object p2, p0, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 46
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/os/Parcel;)V

    .line 50
    sget-object v0, Landroid/content/pm/LauncherApps$PinItemRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps$PinItemRequest;

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 51
    return-void
.end method


# virtual methods
.method public final needsConfigure()Z
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public final startConfigActivity(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/ItemInfo;I)Z
    .locals 0

    .line 62
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string p3, "appWidgetId"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    iget-object p2, p0, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p2, p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept(Landroid/os/Bundle;)Z

    .line 65
    const/4 p1, 0x0

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 55
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 56
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps$PinItemRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 57
    return-void
.end method
